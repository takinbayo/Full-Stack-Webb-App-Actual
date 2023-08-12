window.onload = () => {
  const baseUrl ="http://127.0.0.1:8000" 

  const listBtn = document.querySelector("#listCars")
  const carIdSelect = document.querySelector("#carIdSelect")
  const carYearSelect = document.querySelector("#carYearSelect")
  const carMakeSelect = document.querySelector("#carMakeSelect")
  const carContainer = document.querySelector("#carContainer")

  // Generate options for the user dropdown dynamically
  for (let i = 1; i <= 100; i++) {
      const option = document.createElement('option');
      option.value = i;
      option.text = i;
      carIdSelect.appendChild(option);
  }

  const fetchSelectors = async () => {
    const result = await fetch(`${baseUrl}/all`)
    const carData = await result.json()
    // Extract & Sort years - Convert back to array with spread operator
    const years = [...new Set(carData.cars.map(car => car[1]).sort((a, b) => a-b))]
    // Extract & Sort makes - Convert back to array with spread operator
    const makes = [...new Set(carData.cars.map(car => car[2]).sort())]
    createSelectors(years, carYearSelect)
    createSelectors(makes, carMakeSelect)
}

  const createSelectors = (arr, selector) => {
    for (let i = 1; i < arr.length; i++) {
      const option = document.createElement('option');
      option.value = arr[i];
      option.text = arr[i];
      selector.appendChild(option);
    }
  }

  const doFetch = async (url) => {
    const result = await fetch(url)
    const resultJson = await result.json()
    return resultJson
  }

  const getCars = async (url) => {
    // const url = `${baseUrl}/all`
    const fetchResult = await doFetch(url)
    // console.log(fetchResult)
    const cars = fetchResult.cars
    // console.log(cars)
    cars.forEach( c => createHtmlCar(c))
  }

  const getCar = async (url) => {
    // const url = `${baseUrl}/${id}` 
    const fetchResult = await doFetch(url)
    const car = fetchResult.cars
    createHtmlCar(car)
  }

  const removeCars = () => {
    while(carContainer.firstChild) {
      carContainer.removeChild(carContainer.firstChild)
    }
  }

  const createHtmlCar = (car) => {
    const div = document.createElement("div")
    const h3 = document.createElement("h3")
    const p1 = document.createElement("p")

    console.log(car)
    h3.innerText = `${car[2]} ${car[3]}`
    p1.innerText = `Year: ${car[1]}`

    div.appendChild(h3)
    div.appendChild(p1)

    div.className = "item"

    carContainer.appendChild(div)
  }


  carIdSelect.addEventListener("change" ,(e) => {
      removeCars()
      const id = e.target.value
      getCar(`${baseUrl}/${id}`)
    })

  carYearSelect.addEventListener("change" ,(e) => {
      removeCars()
      const year = e.target.value
      getCars(`${baseUrl}/by_year/${year}`)
    })

  carMakeSelect.addEventListener("change" ,(e) => {
      removeCars()
      const make = e.target.value
      console.log(`${baseUrl}/by_make/${make}`)
      getCars(`${baseUrl}/by_make/${make}`)
    })
  
    listBtn.addEventListener("click" ,() => {
      removeCars()
      const url = `${baseUrl}/all`
      getCars(url)
    })

    fetchSelectors()
}