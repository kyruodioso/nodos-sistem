import { useState, useEffect } from 'react'

import './App.css'


function App() {
  const [data,setData] = useState({})

  useEffect(()=>{
    const fetchData = async()=>{
      const response= await
      fetch('http://localhost:3000/');
      const data = await response.json();
      console.log(data.data[0].temperatura)
      setData(data)
    }
    fetchData()
  },[]);


  return (
    <>
      <div>
        <h1>Conexion Node React</h1>
        <h2>hola</h2>
        <p>Temperatura: {data.data && data.data[0] && data.data[0].temperatura}</p>
        <p>Humedad: {data.data && data.data[0] && data.data[0].humedad}</p>
      </div>
      
    </>
  )
}

export default App