import Link from 'next/link'

const Dashboardpage = () => {
  return (
    <div className="flex min-h-screen flex-col items-center justify-between p-32">

        <h1>Dashboard</h1>
        <Link href="/telaInicial">Voltar para Dashboard</Link>
      
    </div>
  )
}

export default Dashboardpage