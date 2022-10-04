all:
  hosts:
    cp1:
      ansible_host: ${master}
      ansible_user: ${user}
    node1:
      ansible_host: ${node_1}
      ansible_user: ${user}
    node2:
      ansible_host: ${node_2}
      ansible_user: ${user}
  children:
    kube_control_plane:
      hosts:
        cp1:
    kube_node:
      hosts:
        cp1:
        node1:
        node2:
    etcd:
      hosts:
        cp1:
    k8s_cluster:
      children:
        kube_control_plane:
        kube_node:
    calico_rr:
      hosts: {}