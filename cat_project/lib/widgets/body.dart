import 'package:cat_project/widgets/contact_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  final projectList = const [
    {
      'title': 'Building Cat',
      'subtitle': 'Great Clinet',
      'image': 'https://picsum.photos/id/3/400/300',
    },
    {
      'title': 'Building Cat 2',
      'subtitle': 'Great Clinet',
      'image': 'https://picsum.photos/id/3/400/300',
    },
    {
      'title': 'Building Cat 3',
      'subtitle': 'Great Clinet',
      'image': 'https://picsum.photos/id/3/400/300',
    },
    {
      'title': 'Building Cat 4',
      'subtitle': 'Great Clinet',
      'image': 'https://picsum.photos/id/3/400/300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/bg1.jpeg'),
                            fit: BoxFit.cover,
                          )
                        )
                      ),
                    ),
                    SizedBox(
                      // color: Colors.amberAccent,
                      height: 200,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                              "I'am Nadiar,\nnice to meet you",
                              style: TextStyle(color: Colors.black54, fontSize: 33.2)),
                          ContactButton(
                            buttonText: 'Drop me a line',
                            icon: const Icon(Icons.email),
                            onPressed: () {
                              print('Hello World');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 0, 16.0),
                child: Text('MyProjects',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                )),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: projectList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,
                          horizontal: 16.0),
                      child: Column(
                        children: [
                          Card(
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.work),
                                  title: Text(projectList[index]['title']!),
                                  subtitle: Text
                                    (projectList[index]['subtitle']!),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 300,
                                  height: 300,
                                  child: Image.network(projectList[index]['image']!),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
              )
            ],
          )
        )
      ],
    );
  }
}
