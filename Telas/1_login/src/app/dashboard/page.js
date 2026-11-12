import Link from "next/link"
const DashboardPage = () => {
  return (
  

    <main className="bg-[#004E92] h-20 text-[#F8FCFF] padding-0">
       {/* <Link href="/login">Voltar para tela inicial</Link> */}

     <header className="flex  gap-330  ">
        
        <div className="flex">
            <img src="/TJPA.logo.svg" className="relative left-10" alt="logo TJPA"></img>
            <p className="relative top-7 left-10">Tribunal de Justiça do Pará</p>
        </div>
        
        <div className="flex gap-20 h-13 relative top-4">
                <img  className=" h-12" src="/iconeEscuro.svg"></img>
            <div className="flex gap-10 ">
               <Link href="\login"><p className="relative top-4 left-7">Sair</p></Link>
                <img src="/icone-pessoa.svg"></img>
            </div>
        </div>
      
     </header>

     <aside className="text-[#F8FCFF] bg-[#004E92] w-50 h-170 relative top-20 rounded-r-lg">
            <img  className="relative top-3 left-5" src="barrinha.svg"></img>
            <hr className="relative top-10"></hr>
        <div className="flex flex-col gap-6 relative left-5 top-15">
             <Link href="\dashboard"><p>Dashboard</p></Link>
             <Link href="\chamado"><p>Chamado</p></Link>
             <Link href="\agendamento"><p>Agendamento</p></Link>
             <Link href="\configuracao"><p>Configurações</p></Link>
             <Link href="\inicial"><p>Voltar</p></Link>
        
        </div>
     </aside>           

     <section>
          
        <div className="bg-[#EBEFF2]  h-0 w-390 relative bottom-150 left-70 ">
           {/* <img  className="h" src="\circulo.svg"></img> */}


        </div>

     </section>


    </main>
  )
}



export default DashboardPage