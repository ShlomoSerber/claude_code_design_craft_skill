import 'package:flutter/material.dart';

/// Home tab of a meditation app.
///
/// Sections:
///  - Greeting header
///  - Today's recommended session (hero card)
///  - Horizontal row of quick sessions (5 / 10 / 20 min)
///  - List of recent sessions
///  - Bottom tab bar (Home / Explore / Progress / Profile)
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.userName = 'Aaron'});

  final String userName;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  static const Color _bg = Color(0xFFF4F1EC);
  static const Color _surface = Colors.white;
  static const Color _ink = Color(0xFF1F2A2E);
  static const Color _muted = Color(0xFF6B7A80);
  static const Color _accent = Color(0xFF5B8A8A);
  static const Color _accentDark = Color(0xFF2F5D5D);

  static const List<QuickSession> _quickSessions = [
    QuickSession(minutes: 5, title: 'Quick reset', icon: Icons.bolt_outlined),
    QuickSession(minutes: 10, title: 'Breathe', icon: Icons.air),
    QuickSession(minutes: 20, title: 'Deep focus', icon: Icons.spa_outlined),
  ];

  static const List<RecentSession> _recentSessions = [
    RecentSession(
      title: 'Morning Clarity',
      category: 'Focus',
      minutes: 10,
      completedAt: 'Today, 7:15 AM',
      icon: Icons.wb_sunny_outlined,
    ),
    RecentSession(
      title: 'Letting Go of Tension',
      category: 'Body scan',
      minutes: 15,
      completedAt: 'Yesterday',
      icon: Icons.self_improvement,
    ),
    RecentSession(
      title: 'Wind Down',
      category: 'Sleep',
      minutes: 20,
      completedAt: 'Sunday',
      icon: Icons.nightlight_outlined,
    ),
    RecentSession(
      title: 'Gratitude Pause',
      category: 'Mindfulness',
      minutes: 5,
      completedAt: 'Saturday',
      icon: Icons.favorite_border,
    ),
  ];

  String get _greeting {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  void _startSession(BuildContext context, String label) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('Starting $label')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildHeroCard(context),
            const SizedBox(height: 28),
            _sectionTitle('Quick sessions'),
            const SizedBox(height: 12),
            _buildQuickSessionsRow(context),
            const SizedBox(height: 28),
            _sectionTitle('Recent sessions', action: 'See all'),
            const SizedBox(height: 12),
            ..._recentSessions.map(
              (s) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: _RecentSessionTile(
                  session: s,
                  onTap: () => _startSession(context, s.title),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentTab,
        backgroundColor: _surface,
        indicatorColor: _accent.withOpacity(0.15),
        onDestinationSelected: (i) => setState(() => _currentTab = i),
        destinations: const [
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
            icon: Icon(Icons.insights_outlined),
            selectedIcon: Icon(Icons.insights),
            label: 'Progress',
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

  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$_greeting, ${widget.userName}',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: _ink,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Take a moment for yourself today.',
                style: TextStyle(fontSize: 15, color: _muted),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        CircleAvatar(
          radius: 22,
          backgroundColor: _accent.withOpacity(0.2),
          child: Text(
            widget.userName.isNotEmpty
                ? widget.userName[0].toUpperCase()
                : '?',
            style: const TextStyle(
              color: _accentDark,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeroCard(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () => _startSession(context, 'Calm Under Pressure'),
        child: Ink(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [_accent, _accentDark],
            ),
            boxShadow: [
              BoxShadow(
                color: _accentDark.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "TODAY'S PICK",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.auto_awesome,
                    color: Colors.white.withOpacity(0.85),
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const Text(
                'Calm Under Pressure',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'A guided practice to steady your breath and soften a busy mind.',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _heroMeta(Icons.schedule, '12 min'),
                  const SizedBox(width: 16),
                  _heroMeta(Icons.headphones_outlined, 'Guided'),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.play_arrow_rounded,
                            color: _accentDark, size: 20),
                        SizedBox(width: 4),
                        Text(
                          'Start',
                          style: TextStyle(
                            color: _accentDark,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _heroMeta(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.white.withOpacity(0.9)),
        const SizedBox(width: 5),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildQuickSessionsRow(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: _quickSessions.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, i) {
          final q = _quickSessions[i];
          return _QuickSessionCard(
            session: q,
            onTap: () => _startSession(context, '${q.minutes}-minute ${q.title}'),
          );
        },
      ),
    );
  }

  Widget _sectionTitle(String title, {String? action}) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: _ink,
          ),
        ),
        const Spacer(),
        if (action != null)
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: _accentDark,
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 32),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(action),
          ),
      ],
    );
  }
}

class QuickSession {
  const QuickSession({
    required this.minutes,
    required this.title,
    required this.icon,
  });

  final int minutes;
  final String title;
  final IconData icon;
}

class RecentSession {
  const RecentSession({
    required this.title,
    required this.category,
    required this.minutes,
    required this.completedAt,
    required this.icon,
  });

  final String title;
  final String category;
  final int minutes;
  final String completedAt;
  final IconData icon;
}

class _QuickSessionCard extends StatelessWidget {
  const _QuickSessionCard({required this.session, required this.onTap});

  final QuickSession session;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _HomeScreenState._surface,
      borderRadius: BorderRadius.circular(18),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Container(
          width: 130,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: const Color(0xFFE6E1D9)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: _HomeScreenState._accent.withOpacity(0.14),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  session.icon,
                  size: 20,
                  color: _HomeScreenState._accentDark,
                ),
              ),
              const Spacer(),
              Text(
                '${session.minutes} min',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: _HomeScreenState._ink,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                session.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  color: _HomeScreenState._muted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecentSessionTile extends StatelessWidget {
  const _RecentSessionTile({required this.session, required this.onTap});

  final RecentSession session;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _HomeScreenState._surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: _HomeScreenState._bg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  session.icon,
                  color: _HomeScreenState._accentDark,
                  size: 22,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      session.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: _HomeScreenState._ink,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '${session.category} · ${session.minutes} min · ${session.completedAt}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12.5,
                        color: _HomeScreenState._muted,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.replay_rounded,
                color: _HomeScreenState._muted,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
