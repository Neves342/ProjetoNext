import Link from "next/link"

export default function Home() {
  return (
     
      <main className="flex min-h-screen flex-col items-center justify-between p-32">
          { /*Aula 01 - Navegação*/}

       <h1 className="text-black-600">Acesso para Magistrados, Servidores e Colaboradores:</h1>

       <Link href="/telaInicial" className="font-bold">Login</Link>

         {/* Aula 02 - Dados Dinâmicos */}
       

      </main>
    
  );
}
