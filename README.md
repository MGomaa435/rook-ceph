# Deployment Steps and Commands used
## all Code available on github and exist on master01 on this path, /data/git-repo/helm-charts
- firstly, we had to install rook-ceph operator using helm chart in this version.
- secondly, we used this cluster.yaml file to create the cluster.
- once you have a running cluster, you can create filesystem.yaml
- after filesystem created, create a storageclass.yaml to be consumed by pods.
- to make the dashboard accessible, use dashboard-external-https.yaml to export NodePort service.

# Common Issues and Handling
- OSD is down while pod is running. most probably it is a network issue to be solved in next heartbeat or restart the OSD POD.
- ceph status is reporting warning for mon slow ops. this maybe due to time synchronization, could be solved by ensuring that ntpd service is running across all the nodes. use service ntpd start
