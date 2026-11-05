import Link from 'next/link'

const Configuracaopage = () => {
  return (
     <div className="flex min-h-screen flex-col items-center justify-between p-32">

        <h1>Configurações</h1>
        <Link href="/telaInicial">Voltar para o Dashboard</Link>     

     </div>
  )
}

export default Configuracaopage