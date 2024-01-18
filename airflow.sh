#atualizar sistema
sudo apt update

#atualizar sistema
sudo apt upgrade 

#instalar python
sudo apt install python3 python3-pip 

#instalar ferramenta de ambiente virtual
pip3 install virtualenv 

#criar ambiente virtual para o airflow
virtualenv airflow-env 

#acessar ambiente virtual
source airflow-env/bin/activate 

#instalar airflow
pip install apache-airflow 

#inicia o banco de dados do airflow
airflow db init 

#criar o usuário
airflow users create --username admin --firstname fabio --lastname fachini --role Admin --email fabiofachini92@gmail.com 

#inicia o servidor web na porta 8080
airflow webserver --port 8080 

#iniciar o agendador do airflow
airflow scheduler 

#encontrar a pasta de configuração
sudo find / -name airflow.cfg 

#abrir o arquivo e identificar a pasta das DAGs dags_folder = /caminho/para/sua/nova/pasta/dags
nano /home/<usuario>/airflow/airflow.cfg 

#caso a pasta não exista, criar pasta
mkdir -p /home/fabio_f/airflow/dags 

#importar os códigos python para dentro da pasta
sudo wget https://raw.githubusercontent.com/fabiofachini/<arquivo>.py -P /home/<usuario>/airflow/dags 

#reiniciar o banco de dados do airflow
airflow db init

#reiniciar o agendador do airflow
airflow scheduler

#mantém funcionando mesmo fechando o terminal
nohup airflow scheduler & 

#lembrar de liberar a porta 8080 no firewall

