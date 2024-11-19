import { UserButton } from "@clerk/nextjs";
import { auth } from "@clerk/nextjs/server";
import { redirect } from "next/navigation";  // Corrigido: importação do redirect
import { dark } from "@clerk/themes"; // Se você não estiver utilizando 'dark' ainda, pode removê-lo

const Home = async () => {
    const { userId } = await auth(); // Certifique-se de que auth() retorna o valor correto
    if (!userId) {
        redirect("/login");  // Redireciona para a página de login se não houver userId
    }
    
    return (
        <div classname="flex h-full items-center justify-center">  {/* Corrigido: className e "items-center" */}
            <UserButton showname />  
        </div>
    );
};

export default Home;  // Corrigido: exportação da função Home com a primeira letra maiúscula