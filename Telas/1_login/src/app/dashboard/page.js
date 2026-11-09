import Link from "next/link"

const DashboarPage = () => {
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
                <p className="relative top-4 left-7">Perfil</p>
                <img src="/icone-pessoa.svg"></img>
            </div>
        </div>
      
     </header>

     <aside className="text-[#F8FCFF] bg-[#004E92] w-50 h-170 relative top-20 rounded-r-lg">
            <img  className="relative top-3 left-5" src="barrinha.svg"></img>
            <hr className="relative top-10"></hr>
        <div className="flex flex-col gap-6 relative left-5 top-15">
            <p>dashboard</p>
            <p>Chamados</p>
            <p>Agendamento</p>
            <p>Configurações</p>
        </div>
     </aside>           

     <section>
          
        <div className="bg-[#EBEFF2]  h-50 w-390 relative bottom-150 left-70 ">



        </div>

     </section>


    </main>
  )
}

export default DashboarPage

