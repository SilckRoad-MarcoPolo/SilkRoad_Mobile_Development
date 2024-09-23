List<Skill> skills = [
  Skill(name: "React", imagePath: "assets/images/skills/react.png"),
  Skill(name: "Node.js", imagePath: "assets/images/skills/node_js.png"),
  Skill(name: "JavaScript", imagePath: "assets/images/skills/javascribt.png"),
  Skill(name: "MongoDB", imagePath: "assets/images/skills/mongo.png"),
  Skill(name: "iOS", imagePath: "assets/images/skills/ios.png"),
  Skill(name: ".NET", imagePath: "assets/images/skills/net.png"),
  Skill(name: "PHP", imagePath: "assets/images/skills/php.png"),
  Skill(name: "Ruby", imagePath: "assets/images/skills/ruby.png"),
  Skill(name: "Rust", imagePath: "assets/images/skills/rust.png"),
  Skill(name: "Python", imagePath: "assets/images/skills/python.png"),
  Skill(name: "Java", imagePath: "assets/images/skills/java.png"),
  Skill(name: "C++", imagePath: "assets/images/skills/c++.png"),
  Skill(name: "TypeScript", imagePath: "assets/images/skills/typescript.png"),
  Skill(name: "Angular", imagePath: "assets/images/skills/angular.png"),
  Skill(name: "Vue.js", imagePath: "assets/images/skills/vue_js.png"),
  Skill(name: "Docker", imagePath: "assets/images/skills/docker.png"),
  Skill(name: "Kubernetes", imagePath: "assets/images/skills/kubernetes.png"),
  Skill(name: "AWS", imagePath: "assets/images/skills/aws.png"),
  Skill(name: "Firebase", imagePath: "assets/images/skills/firebase.png"),
  Skill(name: "GraphQL", imagePath: "assets/images/skills/graph_qL.png"),
];

class Skill {
  final String name;
  final String imagePath;
  bool isSelected;

  Skill({required this.name, required this.imagePath, this.isSelected = false});
}
