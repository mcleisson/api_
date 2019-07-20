# README

Instruções para subir o sistema APILinx

* Versão do RoR
Ruby versão 2.5.3
Rails versão 5.2.3

*Instruções para instalação
1 - Este sistema foi desenvolvido em Linux Ubuntu 14.04, e não garantimos a usa usabilidade em sistemas Windows. 
    Caso não tenha efetuada a instalação do Ruby e do Rails, deve ser efetuada a instalação para que o sistema opere normalmente. 
    Você pode localizar na internet tutoriais de como instalar no seu Linux o ruby e o rails. O banco de dados utilizado nesse projeto
    é o SQLite3, devido a isto pode rodar junto com o sistema.
    
2 - Faça o download do arquivo compactado;

3 - Descompacte o arquivo em algum diretório separado, recomendo que seja descompactado em uma pasta chamada de Sites no diretório raiz do usuário;

4 - Abra o terminal e acesse a pasta que descompactou;

5 - Execute o comando bundle;

6 - Execute o comando rake db:migrate;

7 - Execute o comando rake db:seed para inserir os dados iniciais no sistema;

8 - Execute o comando rails s, para que o servidor seja startado. Após isto abra o seu navegador de internet preferido e acesse 
    http://localhost:3000 ou se está executando em uma VM com acesso somente via linha de comando, abra seu navegador de sua maquina local e insira o endereço de acesso http://ip_do_servidor_ou_url:3000, exemplo http://192.168.100.200:3000 ou http://www.meusite.com.br:3000, e irá aparecer uma tela que o servidor está rodando;

*Testendo a aplicação

1 - O teste deve ser feito via Postman (https://www.getpostman.com/downloads/), instale em seu computador;





* ...
# api
