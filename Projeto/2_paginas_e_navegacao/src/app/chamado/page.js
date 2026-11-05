import Link from "next/link"

const Chamadopage = () => {
  return (
       <div className="flex min-h-screen flex-col items-center justify-between p-32">
        
        <h1>Chamados</h1>
        <Link href="/telaInicial">Voltar para Dashoard</Link>

    </div>
  )
}

export default Chamadopage



