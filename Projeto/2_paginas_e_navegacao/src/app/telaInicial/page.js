import Link from "next/link"

const InicialPage = () => {
  return (
    <div className="flex flex-col items-center gap-10 p-32">

        <h1>Tela Inicial</h1>
        <Link href="/dashboard">Dashboard</Link>
        <Link href="/chamado">Chamados</Link>
        <Link href="/filaTrabalho">Fila de Trabalho</Link>
        <Link href="/agendamento">Agendamento</Link>
        <Link href="/configuracao">Configurações</Link>
        <Link href="/">Voltar para o Home</Link>
        
    </div>
  )
}

export default InicialPage