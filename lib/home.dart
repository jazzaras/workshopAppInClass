import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textEditingController = TextEditingController();

  var weight = 43;
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C284D),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "BMI Calculator",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 98, 93, 139),
                        borderRadius: BorderRadius.circular(20)),
                    height: 120,
                    width: 120,
                    child: const Column(
                      children: [
                        Icon(
                          color: Colors.white,
                          Icons.male,
                          size: 80,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 98, 93, 139),
                        borderRadius: BorderRadius.circular(20)),
                    height: 120,
                    width: 120,
                    child: const Column(
                      children: [
                        Icon(
                          color: Colors.white,
                          Icons.female,
                          size: 80,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: 290,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 98, 93, 139),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 136, 121, 139),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 175,
                width: 290,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 98, 93, 139),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Weight",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Text(
                      "$weight Kg",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: CircleBorder()),
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          child: Icon(Icons.remove),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: CircleBorder()),
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: Icon(Icons.add),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    var height = int.parse(textEditingController.text);
                    result = weight / (height / 100 * height / 100);
                  });
                },
                child: const Text("submit"),
              ),
              const SizedBox(height: 20),
              if (result != null)
                Text(
                  result.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
