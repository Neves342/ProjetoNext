"use client"

// Usar com use (hook) => ambiente client

import { useSearchParams } from "next/navigation"

const ExemploPage = () => {
   const searchParams = useSearchParams()

   console.log(searchParams)

   const valorParam = searchParams.get("parametro")

  return (<div>
    <h1>Exibindo resultados para: {valorParam}</h1>

  </div>
  )
}

export default ExemploPage