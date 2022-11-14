async function getData(url,render){
    const response = await fetch(url)
    const data = await response.json()
    //console.log('kliens oldalon megvannak az adatok: ',data)
    render(data)
}