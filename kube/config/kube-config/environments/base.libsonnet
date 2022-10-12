
// this file has the baseline default parameters
{
  components: {
    myapp: {
      name: 'gitlab-app',
      image: 'registry.gitlab.com/galtsev001/diplom-test-app',
      replicas: 1,
      imageTag: 'latest',
      targetPort: 80,
      nodePort: 30002,
      port: 80,
      nodeSelector: {},
    },
  },
}
