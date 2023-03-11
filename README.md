# airflow-in-ecs
AWS ECS 환경에서 airflow를 운영하기 위한 레포  
환경 구성 : airflow2.5.1 + mysql5.7 + redis

## 개발 환경 시작하기


1. docker-compose.yaml.sample을 복사 한 docker-compose.yaml 파일을 생성

2. mysql 테이블 초기화 수행  
```  
  $ docker-compose up airflow-innit
```

3. airflow 실행  
```  
  $ docker-compose up --build     # docker-compose.yaml 수정 후 혹은 최초 1회 실행 시
  $ docker-compose up             # airflow 실행
```

4. airflow CLI 명령어 수행  
```
  $ docker compose run airflow-worker airflow --version
```

5. airflow 종료 및 전체(컨테이너, 볼륨, 이미지, 네트워크) 삭제  
```  
  $ docker compose down --volumes --rmi all  

  [+] Running 15/16
 ⠿ Container airflow-in-ecs-airflow-webserver-1   Removed                     23.7s
 ⠿ Container airflow-in-ecs-airflow-scheduler-1   Removed                     12.8s
 ⠿ Container airflow-in-ecs-airflow-triggerer-1   Removed                     12.6s
 ⠿ Container airflow-in-ecs-airflow-worker-1      Removed                     23.5s
 ⠿ Container airflow-in-ecs-airflow-init-1        Removed                      0.6s
 ⠿ Container airflow-in-ecs-mysql-1               Removed                      4.9s
 ⠿ Container airflow-in-ecs-redis-1               Removed                      0.3s
 ⠿ Volume airflow-in-ecs_mysql_data               Removed                      0.3s
 ⠿ Image airflow-in-ecs-airflow-triggerer:latest  Removed                      0.1s
 ⠿ Image airflow-in-ecs-airflow-scheduler:latest  Removed                      0.1s
 ⠿ Image airflow-in-ecs-airflow-webserver:latest  Removed                      0.1s
 ⠸ Image airflow-in-ecs-airflow-worker:latest     Removing                     0.3s
 ⠿ Image mysql:5.7                                Removed                      0.1s
 ⠿ Image redis:latest                             Removed                      0.2s
 ⠿ Image airflow-in-ecs-airflow-init:latest       Removed                      0.1s
 ⠿ Network airflow-in-ecs_default                 Removed                      0.1s
```