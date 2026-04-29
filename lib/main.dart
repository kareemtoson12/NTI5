import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const Center(child: Text('Explore Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('M3 Navigation')),
      drawer: NavigationDrawer(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          Navigator.pop(context);
        },
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text('Menu', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text('Home'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: Text('Explore'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: Text('Profile'),
          ),
        ],
      ),
      body: _screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && mounted) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && mounted) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade100,
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: CarouselView(
                itemExtent: 280,
                shrinkExtent: 200,
                children: List.generate(5, (int index) {
                  return Container(
                    color: Colors.deepPurple[100 * ((index % 8) + 1)],
                    child: Center(
                      child: Text(
                        'Card ${index + 1}',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 32),
            FilledButton(onPressed: () {}, child: const Text('Filled Button')),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _selectDate,
              icon: const Icon(Icons.calendar_today),
              label: const Text('Select Date'),
            ),
            const SizedBox(height: 8),
            if (selectedDate != null)
              Text(
                'Selected Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _selectTime,
              icon: const Icon(Icons.access_time),
              label: const Text('Select Time'),
            ),
            const SizedBox(height: 8),
            if (selectedTime != null)
              Text(
                'Selected Time: ${selectedTime!.format(context)}',
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 16),
            const Badge(label: Text('3'), child: Icon(Icons.notifications)),
            const SizedBox(height: 16),
            const SearchBar(hintText: 'Simple Search'),
            const SizedBox(height: 16),
            SearchAnchor(
              builder: (context, controller) {
                return SearchBar(
                  controller: controller,
                  hintText: 'Search Anchor',
                );
              },
              suggestionsBuilder: (context, controller) {
                return [];
              },
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('Tonal Button'),
            ),
            SegmentedButton(
              segments: const [
                ButtonSegment(value: 'a', label: Text('A')),
                ButtonSegment(value: 'b', label: Text('B')),
              ],
              selected: const {'a'},
              onSelectionChanged: (Set<String> selection) {},
            ),
            const SizedBox(height: 16),
            DropdownMenu(
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 'a', label: 'A'),
                DropdownMenuEntry(value: 'b', label: 'B'),
              ],
              onSelected: (value) {},
            ),
            const SizedBox(height: 16),
            FilterChip(
              label: const Text('Online Classes'),
              selected: true,
              onSelected: (bool value) {},
            ),
            const SizedBox(height: 32),
            Text(
              'This is a selectable text area. You can tap and drag to select this text, then copy it. '
              'Flutter provides the SelectionArea widget for this purpose. '
              'It supports text selection, copying, and other text manipulation features.',
              style: TextStyle(fontSize: 14),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SelectionArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Text Selection Area',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This is a selectable text area. You can tap and drag to select this text, then copy it. '
                      'Flutter provides the SelectionArea widget for this purpose. '
                      'It supports text selection, copying, and other text manipulation features.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
