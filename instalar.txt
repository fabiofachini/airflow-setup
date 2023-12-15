sudo apt update #atualizar sistema

sudo apt upgrade #atualizar sistema

sudo apt install python3 python3-pip #instalar python

pip3 install virtualenv #instalar ferramenta de ambiente virtual

virtualenv airflow-env #criar ambiente virtual para o airflow

source airflow-env/bin/activate #acessar ambiente virtual

pip install apache-airflow #instalar airflow

airflow db init #inicia o banco de dados do airflow

airflow users create --username admin --firstname fabio --lastname fachini --role Admin --email fabiofachini92@gmail.com #criar o usuário

airflow webserver --port 8080 #inicia o servidor web na porta 8080

airflow scheduler #iniciar o agendador do airflow

sudo find / -name airflow.cfg #encontrar a pasta de configuração.

nano /home/<usuario>/airflow/airflow.cfg #abrir o arquivo e identificar a pasta das DAGs dags_folder = /caminho/para/sua/nova/pasta/dags

mkdir -p /home/fabio_f/airflow/dags #caso a pasta não exista, criar pasta

sudo wget https://raw.githubusercontent.com/fabiofachini/<arquivo>.py -P /home/<usuario>/airflow/dags #importar os códigos python para dentro da pasta

airflow db init #reiniciar o banco de dados do airflow

airflow scheduler #reiniciar o agendador do airflow

#lembrar de liberar a porta 8080 no firewall

nohup airflow scheduler & #mantém funcionando mesmo fechando o terminal
