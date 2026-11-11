import Image from "next/image";
import Link from "next/link"

export default function Home() {
  return (
    
      <main className="flex h-dvh w-full">
        
        <div className=" flex flex-1 bg-[#004E92] justify-center items-center">
          <img src="/tjpa.png" className="justify"
          alt="imagem TJPA">
          </img>
        </div>

        <div className="flex flex-1 justify-center items-center">
          <div className="flex flex-col gap-30"> 
            
            <div className="flex flex-col justify-center items-center gap-4">
                <p>Acesso para Magistrados, Servidores e Colaboradores:</p>
 
                <div className="relative right-40 top-16"> 
                   <img src="corporativo.svg" className="relative left-5 top-2"></img>
                </div>

                <button className="bg-none border-2 rounded-3xl w-105 h-16 border-[#004E92]" > 
                     Entrar com E-mail Corporativo
                </button>
            </div> 
                    
            <div className="flex flex-col justify-center gap-1"> 
              <p className="relative left-25">Acesso para o público externo</p>

             <div className="flex flex-col gap-8">
               <label>Email</label>
               <input placeholder="Insira seu email" className="border-2 rounded-3xl h-16 border-[#004E92]"></input>
               
               <label>Senha</label>
               <input placeholder="Insira sua senha" className="border-2 rounded-3xl h-16 border-[#004E92]"></input>
             </div>
            </div>
            

              <div className="flex gap-25">
                <div>
                  <button className="border-1 text-[#007B91] rounded-3xl h-10 w-40 ">Criar Conta</button>
                </div>
                <div>
                 <Link className="relative left-27 bottom-3.5 text-[#F8FCFF]" href="\inicial">Entrar</Link> <button  className="border-none text-white rounded-3xl h-10 w-40 bg-[#007B91]"></button>
                    {/* <Link href="/dashboard" className="border-none text-white rounded-3xl h-10 w-40 bg-[#007B91]">Entrar</Link> */}
                 
                </div>
             
              </div>
          </div>
          
        </div>


           
          
      </main>
   
  );
}

  {/* <div className="flex  items-center gap-6 text-center sm:items-start sm:text-left">
                <h1 className="leading- tracking-tight text-black "> Acesso para Magistrados, Servidores e Colaboradores:</h1>
         
            </div>
            <div className="flex-1">
              <h1>ghdhe</h1>
            </div> */}


{/* <Image
          className="dark:invert h-5 w-[100px]"
          src="/next.svg"
          alt="Next.js logo"
          width={100}
          height={20}
          priority
        /> */}