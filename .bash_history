sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg 
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo usermod -a -G docker ubuntu
sudo mkdir -p /etc/systemd/system/docker.service.d
cat /etc/docker/daemon.json 
sudo systemctl daemon-reload 
sudo systemctl restart docker
sudo apt -y install vim git curl wget kubelet kubeadm kubectl kubernetes-cni
sudo apt-mark hold kubelet kubeadm kubectl
sudo \vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
kubeadm init
sudo kubeadm init
cd
kubectl apply -f 
sudo kubectl apply -f 
kubectl version | base64 | tr -d '\n'
echo $kubever
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$kubever" 
kubectl get nodes 
kubectl get pods --all-namespaces 
k get nodes
kubectl get nodes
kubectl get node
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf  $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get node
kubectl get pods --all-namespaces
sudo su
sudo su -
k get nodes
k create ns test
k get ns
k get po -n test
k get po
k get po -n kube-node-lease
vi newNamespace.yml
k apply -f newNamespace.yml 
vi newNamespace.yml
k apply -f newNamespace.yml 
k get ns
k delete ns new-namespace
k get ns
k get po -n monitoring
kubectl run tutum --image=tutum/hello-world --namespace=test
k get po
k get po -n test
k get deploy -n test
kubectl get pods --namespace=new-namespace
kubectl get pods --namespace=test
kubectl get pods -A
k get pods -A
vi mytutum.yml
k apply -f mytutum.yml
vi mytutum.yml
k apply -f mytutum.yml
vi mytutum.yml
k apply -f mytutum.yml
vi mytutum.yml
k get ns
vi mytutum.yml
k apply -f mytutum.yml
k get po -n monitoring
vi mytutum.yml
k apply -f mytutum.yml
k get po -n monitoring
k get po 
k get po -n test
k get po -n monitoring
k delete po mytutum -n test
k get po -n monitoring
k get po -n test
k get po -n monitoring
k get daemon
k get daemonset
k get ns
k get daemon -n test
k get daemonset -n test
k get pod -n  test
k get svc
k get job
k get job -A
vi job.yaml
k get job
k delete get-hostname 
k delete  job get-hostname 
k get job
k apply -f job.yml
k get po
watch k get po
watch kubectl get pods
k delete get-hostname 
k delete  job get-hostname 
k apply -f job.yml
watch kubectl get pods
vi job.yml
k delete job get-hostname
vi job.yml
k apply -f job.yml
watch kubectl get pods
k delete job get-hostname
vi job.yml
k apply -f job.yml
watch kubectl get pods
k delete job get-hostname
k apply -f job.yml
watch kubectl get pods
vi cronjon.yml
kubectl apply -f cronjob.yml
ls -ltr
cp cronjon.yml cronjob.yml
kubectl apply -f cronjob.yml
k get po
watch kubectl get po
sudo wget -qO- https://github.com/derailed/k9s/releases/download/v0.25.18/k9s_Linux_x86_64.tar.gz | tar zxvf - -C /tmp/
sudo mv /tmp/k9s /usr/local/bin
k9s
k9s
cat ~/.kube/config
mkdir configmap-example
$ wget https://kubernetes.io/examples/configmap/game.properties -O configmap-
$ wget https://kubernetes.io/examples/configmap/game.properties -O configmap-example/game.properties
wget https://kubernetes.io/examples/configmap/ui.properties -O configmap-
cat game.properties
ls -ltr
rm -rf configmap-
ls -ltr
cat configmap-example
cat configmap-example/
cat configmap-example/game.properties 
cat configmap-example/ui.properties 
cd configmap-example/
ls -ltr
cd
wget https://kubernetes.io/examples/configmap/ui.properties -O configmap-
ls -ltr
cd configmap-example/
ls -ltr
ls -ltra
cd .
ls
cd .
cd ..
ls -ltr
cd configmap
cd configmap-
cat configmap-
sudo rm -rf configmap-
wget https://kubernetes.io/examples/configmap/ui.properties -O configmap-example/ui.properties
ls -ltr
cat configmap-example/
cat configmap-example/ui.properties
kubectl create configmap game-config-example --from-file=configmap-example/
k get cm
kubectl describe configmaps game-config-example
kubectl create configmap game-config-example-2 --from-file=configmap-
kubectl create configmap game-config-example-2 --from-file=configmap-example/game.properties
k get cm
kubectl describe configmaps game-config-example-2
kubectl create configmap game-config-2 --from-file=configmap-example/game.properties --
kubectl create configmap game-config-2 --from-file=configmap-example/game.properties --from-file=configmap-example/ui.properties
k get cm
k delete cm game-config-2 
kubectl create configmap game-config-2 --from-file=configmap-example/game.properties --from-file=configmap-example/ui.properties
k get cm
$ kubectl create configmap config-example-values --from-literal=example.value=one --from-
$ kubectl create configmap config-example-values --from-literal=example.value=one --from-literal=example-type=2 --from-literal=example.url=http://example.com
ls -ltr
cat configmap-example/game-env-file.properties
kubectl create configmap game-config-env-file-example --from-env-file=configmap-example/game-env-file.properties
k get cm
kubectl create configmap game-config-key-example --from-file=game-key-example-data=configmap-example/game.properties
k get cm
kubectl get configmap game-config-key-example -o yaml
kubectl get configmap game-config-env-file-example -o yaml
ls -ltr
cp example-pod.yaml example-pod.yaml1
ls -ltr
k apply -f example-pod.yaml1
vi example-pod.yaml
k apply -f example-pod.yaml
vi example-pod.yaml
k apply -f example-pod.yaml
vi example-pod.yaml
k get po
vi example-pod.yaml
k get cm
k delete cm app-basic-configmap 
$ kubectl create configmap app-basic-configmap --from-file=configmap-example/app-
kubectl get configmap app-basic-configmap -o yaml
ls -ltr
rm -rf example-pod.yaml1
vi example-pod.yaml 
k apply -f example-pod.yaml 
k get po
vi example-pod.yaml 
k get cm
vi application-defaults.yaml
vi application-logs.yaml
kubectl create -f application-defaults.yaml
kubectl create -f application-logs.yaml
k get cm
vi example-pod-config.yaml
vi example-pod-config.yaml
k apply -f example-pod-config.yaml 
vi example-pod-config.yaml
k apply -f example-pod-config.yaml 
k get po
k logs configmap-example-pod-config
kubectl logs configmap-example-pod | grep APPLICATION_TYPE
kubectl logs configmap-example-pod-config | grep APPLICATION_TYPE
kubectl logs configmap-example-pod | grep APPLICATION_UI_TYPE
kubectl logs configmap-example-pod-config | grep APPLICATION_UI_TYPE
kubectl logs configmap-example-pod-config | grep LOG_LEVEL
vi example-pod-config.yaml
vi example-pod-sleep.yaml
ls -ltr
k apply -f 
ubuntu@ip-172-31-6-120:~$ k apply -f
k apply -f example-pod-sleep.yaml
k get po
k exec -it configmap-example-pod-sleep --sh
k exec -it configmap-example-pod-sleep -- sh
k get po
k get secrets
k get secrets -A
cat username.txt 
echo -n "1f2d1e2e67df" > ./password.txt 
kubectl create secret generic db-user-pass --from-file=./username.txt --from-file=./password.txt
k get secrets
echo -n "1f2d1e2e67df" | base64
echo -n "admin" | base64
vi example_secret.yaml
k apply -f example_secret.yaml
k get secret
vi example_secret.yaml
kubectl get secret mysecret -o yaml
ls -ltr
cat example_secret.yaml 
kubectl get secret mysecret -o yaml
kubectl get describe mysecret -o yaml
kubectl get describe mysecret 
kubectl  describe secret mysecrret
kubectl  describe secret mysecret
kubectl get secret mysecret -o yaml
kubectl get secret mysecret -o json
echo "MWYyZDFlMmU2N2Rm" | base64 --decode
cat example_secret.yaml 
vi example_secret.yaml
echo "YWRtaW4=" | base64 --decode
vi secret_volume.yaml
kubectl get secret mysecret -o yaml
kubectl apply -f secret_volume.yaml
k get po
kubectl exec -it redis-pod -- bash
vi secret_volume.yaml
ls -ltr
cat example_secret.yaml 
vi example_secret.yaml 
cp example_secret.yaml example_secret-1.yml
vi example_secret-1.yml
k apply -f example_secret-1.yml
vi example_secret-1.yml
k apply -f example_secret-1.yml
vi example_secret-1.yml
k apply -f example_secret-1.yml
vi example_secret-1.yml
k apply of secret.yaml
k apply -f secret.yaml
vi example_secret-1.yml
vi secret.yaml
k get po
k exec -it secret-env-pod -- bash
vi empty_dir_volume_ex.yml
k apply -f empty_dir_volume_ex.yml
k get po
vi empty_dir_volume_ex.yml
kubectl exec -it emptydir-ex -c container-1 – sh
kubectl exec -it emptydir-ex -c container-1 -- sh
kubectl exec -it emptydir-ex -c container-2 -- sh
kubectl exec -it emptydir-ex -c  -- sh
kubectl exec -it emptydir-ex  -- sh
kubectl exec -it emptydir-ex -c container-1 -- sh
k get nodes
sudo apt update -y
k get po
k get no
sudo apt-get install openjdk-11-jdk
java -version
java c
javac
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ >
/etc/apt/sources.list.d/jenkins.list'
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
vi jenkins.yaml
kubectl create -f jenkins.yaml --namespace jenkins
kubectl create ns jenkins
kubectl create -f jenkins.yaml --namespace jenkins
kubectl get pods -n jenkins
vi jenkins-service.yaml
kubectl create -f jenkins-service.yaml --namespace jenkins
kubectl get services --namespace jenkins
kubectl get nodes -o wide
k get po -n jenkins
k get po -o wide ns jenkins
k get po -o wide  jenkins
kubectl get nodes -o wide
kubectl get pods -n jenkins
kubectl logs jenkins-7d4f76684f-vdct8  -n jenkins
k get po
k get po ns jenkins
kubectl get pods -n jenkins
k get po -n jenkins - o wide
k get po -n jenkins-7d4f76684f-vdct8 - o wide
k get po -n jenkins-7d4f76684f-vdct8 -o wide
k get po -n jenkins -o wide
k describe po jenkins-7d4f76684f-vdct8  -n jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw status
sudo ufw allow OpenSSH
sudo ufw enable
kubectl logs jenkins-7d4f76684f-vdct8  -n jenkins
aws --version
aws configure
aws s3 ls
cd ~/.aws/
ls -ltr
vi credentials 
k get po
k get po -n jenkins
cd ~/.aws
ls -ltr
vi config 
cd
sudo systemctl enable jenkins
sudo apt-get install ansible
cd /etc/ansible
sudo vi hosts
sudo vi kuberneties.pem
sudo chmod 400 kuberneties.pem 
ansible -m ping server
sudo -i
pwd
ansible -m ping server
sudo -i
$ aws ecr create-repository --repository-name webapp --image-scanning-configuration scanOnPush=true \
aws ecr create-repository --repository-name webapp --image-scanning-configuration scanOnPush=true --region ap-south-1
aws ecr get-login-password --region ap-south-1 | sudo docker login --username AWS --password-stdin 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp
aws ecr get-login-password --region ap-south-1 | sudo docker login --username AWS --password-stdin 935404593300.dkr.ecr.ap-south-1.amazonaws.com
ls -ltr
'C:\Users\ramre\Downloads\spring3-mvc-maven-xml-hello-world-1.2.war'
ls -ltr
mv spring3-mvc-maven-xml-hello-world-1.2.war spring3.war
ls -lt
ls -ltr
mkdir war_deploymen
rm -rf war_deploymen
mkdir war_deployment
cp -r spring3.war war_deployment/
ls -ltr
cd war_deployment/
ls -ltr
cd
rm -rf spring3.war
cd war_deployment/
ls -ltr
vi Dockerfile
sudo docker build -t webapp:v1 -t 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1
sudo docker build -t webapp:v1 -t 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
ls -ltr
cd spring3.war
vi spring3.war
ls -ltr
cd ..
ls -ltr
mv spring3-mvc-maven-xml-hello-world-1.2.war war_deployment/
ls -ltr
cd war_deployment/
ls -ltr
rm -rf spring.war
docker build -t webapp:v1 -t 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1
docker build -t webapp:v1 -t 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
vi spring3.war
vi Dockerfile 
ls -ltr
rm -rf  spring3.war
rm -rf  spring3-mvc-maven-xml-hello-world-1.2.war
docker build -t webapp:v1 -t 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
ls -ltr
cd spring3-mvc-maven-xml-hello-world/
ls -ltr
cd
cd war_deployment/
vi Dockerfile 
ls -ltr
mv spring3-mvc-maven-xml-hello-world/ spring3.war
ls -ltr
tar -xvzf spring3.war
cd war_deployment/
ls -ltr
cd
ls -ltr
mv spring3-mvc-maven-xml-hello-world-1.2.war war_deployment/
cd war_deployment/
ls -ltr
docker build -t webapp:v1 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
docker build -t webapp:v1 -t  935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
vi Dockerfile 
docker build -t webapp:v1 -t  935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
ls -ltr
mv spring3-mvc-maven-xml-hello-world-1.2.war spring3.war
docker build -t webapp:v1 -t  935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
mv spring3.war spring3-mvc-maven-xml-hello-world-1.2.war 
ls -ltr
docker build -t webapp:v1 -t  935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
ls -ltr
cd
ls -ltr
cd war_deployment/
ls -ltr
cd 
ls -ltr
mv spring3-mvc-maven-xml-hello-world-1.2.war spring3.war
ls -ltr
mv spring3.war war_deployment/
cd war_deployment/
ls -ltr
rm -rf spring3-mvc-maven-xml-hello-world-1.2.war/
vi Dockerfile 
docker build -t webapp:v1 -t  935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
docker push 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1
vi Dockerfile 
docker build -t webapp:v1 -t  935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1 .
sudo 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1docker push 
sudo docker push 935404593300.dkr.ecr.ap-south-1.amazonaws.com/webapp:v1
mvn --version
sudo apt install maven
k get nodes
k get po
ls -ltr
vi create_secret_ecr.sh 
k get svc
k get po -n hello-spring-webapp -o wide
k get po  hello-spring-webapp -o wide
k get ns
k get svc  hello-spring-webapp -o wide
k get po
k get po -o wide
vi rs_ecr.yml 
ls -ltr
vi svc.yml
k get po -o wide
k describe po webapp-qhtq7 -o wide
k describe po webapp-qhtq7 - o wide
k get po
ls -ltr
k apply -f rs_ecr.yml
k apply -f svc.yml
k create -f svc.yml
k gety po
k get po
k get svc
k get po
k run webapp-qhtq7 
vi rs_ecr.yml 
k apply -f rs_ecr.yml 
vi svc.yml 
k apply -f svc.yml 
k get po
k get rs
k delete rs webapp1
k get po
vi rs_ecr.yml 
k apply -f rs_ecr.yml 
vi svc.yml 
k describe po webapp-qhtq7 - o wide
k describe po webapp-qhtq7 
k get po
df -kh
k delete po webapp-jqpqs 
k get po
df -kh
k get po
df -kh
exit
