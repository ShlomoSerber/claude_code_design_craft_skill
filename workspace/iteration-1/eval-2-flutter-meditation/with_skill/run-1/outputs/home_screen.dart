// Home tab of a meditation app.
//
// Archetype: Soft Bento · Palette: Forest Sage
// Headings: Inter · Body: Geist · Captions: Newsreader · Data: IBM Plex Mono
// Elevation: Soft Lift
//
// Depends on `flutter/material.dart` only. Font families are referenced by
// name; bundle them under `fonts:` in pubspec.yaml (Inter, Geist, Newsreader,
// IBM Plex Mono). If a family is missing, Flutter falls back to the platform
// sans/mono via `fontFamilyFallback`, so the screen still renders correctly.

import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

void main() => runApp(const StillApp());

class StillApp extends StatelessWidget {
  const StillApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = StillTokens.forestSage();
    return MaterialApp(
      title: 'Still',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: tokens.surfacePrimary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: tokens.accentPrimary,
          surface: tokens.surfacePrimary,
        ),
        splashFactory: InkSparkle.splashFactory,
        extensions: [tokens],
      ),
      home: const HomeScreen(),
    );
  }
}

// ---------------------------------------------------------------------------
// Tokens — defined once, referenced everywhere. No hex values below this class.
// ---------------------------------------------------------------------------

class StillTokens extends ThemeExtension<StillTokens> {
  const StillTokens({
    required this.surfacePrimary,
    required this.surfaceSecondary,
    required this.surfaceTertiary,
    required this.surfaceInverse,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundMuted,
    required this.foregroundInverse,
    required this.borderPrimary,
    required this.borderSubtle,
    required this.accentPrimary,
    required this.accentSecondary,
    required this.accentTertiary,
    required this.statusSuccess,
    required this.statusWarning,
    required this.statusError,
    required this.statusInfo,
    required this.shadowSm,
    required this.shadowMd,
    required this.shadowLg,
    required this.shadowXl,
  });

  // Forest Sage palette (design-craft/references/tokens/palettes.md).
  factory StillTokens.forestSage() => const StillTokens(
        surfacePrimary: Color(0xFFF5F3EE),
        surfaceSecondary: Color(0xFFC8DBBC),
        surfaceTertiary: Color(0xFFD6E4E8),
        surfaceInverse: Color(0xFF1B3A28),
        foregroundPrimary: Color(0xFF1B3A28),
        foregroundSecondary: Color(0xFF4A6B52),
        foregroundMuted: Color(0xFF7A9A80),
        foregroundInverse: Color(0xFFFFFFFF),
        borderPrimary: Color(0xFF1B3A28),
        borderSubtle: Color(0xFFD6DDD0),
        accentPrimary: Color(0xFF2D5E3A),
        accentSecondary: Color(0xFF4A8C5E),
        accentTertiary: Color(0xFFA8CCAF),
        statusSuccess: Color(0xFF2D6B3F),
        statusWarning: Color(0xFFC4943A),
        statusError: Color(0xFFC96B6B),
        statusInfo: Color(0xFF4A7A8A),
        // Soft Lift elevation preset (layered, low-alpha).
        shadowSm: [
          BoxShadow(offset: Offset(0, 1), blurRadius: 2, color: Color(0x0A000000)),
        ],
        shadowMd: [
          BoxShadow(offset: Offset(0, 1), blurRadius: 3, color: Color(0x08000000)),
          BoxShadow(offset: Offset(0, 4), blurRadius: 12, color: Color(0x0A000000)),
        ],
        shadowLg: [
          BoxShadow(offset: Offset(0, 1), blurRadius: 3, color: Color(0x08000000)),
          BoxShadow(offset: Offset(0, 8), blurRadius: 24, color: Color(0x0A000000)),
        ],
        shadowXl: [
          BoxShadow(offset: Offset(0, 1), blurRadius: 3, color: Color(0x08000000)),
          BoxShadow(offset: Offset(0, 16), blurRadius: 48, color: Color(0x0A000000)),
        ],
      );

  // Color
  final Color surfacePrimary;
  final Color surfaceSecondary;
  final Color surfaceTertiary;
  final Color surfaceInverse;
  final Color foregroundPrimary;
  final Color foregroundSecondary;
  final Color foregroundMuted;
  final Color foregroundInverse;
  final Color borderPrimary;
  final Color borderSubtle;
  final Color accentPrimary;
  final Color accentSecondary;
  final Color accentTertiary;
  final Color statusSuccess;
  final Color statusWarning;
  final Color statusError;
  final Color statusInfo;

  /// Supporting text on `surfaceInverse` (derived once, never inline).
  Color get foregroundInverseSecondary => foregroundInverse.withValues(alpha: 0.72);

  // Elevation
  final List<BoxShadow> shadowSm;
  final List<BoxShadow> shadowMd;
  final List<BoxShadow> shadowLg;
  final List<BoxShadow> shadowXl;

  // Radius scale
  static const double radiusLg = 8;
  static const double radiusXl = 12;
  static const double radius2xl = 16;
  static const double radiusFull = 9999;

  // Spacing scale (4-based)
  static const double space1 = 4;
  static const double space2 = 8;
  static const double space3 = 12;
  static const double space4 = 16;
  static const double space5 = 20;
  static const double space6 = 24;
  static const double space8 = 32;
  static const double space10 = 40;

  // Type roles
  static const String fontHeadings = 'Inter';
  static const String fontBody = 'Geist';
  static const String fontCaptions = 'Newsreader';
  static const String fontData = 'IBM Plex Mono';
  static const List<String> sansFallback = ['SF Pro Text', 'Roboto', 'sans-serif'];
  static const List<String> serifFallback = ['Georgia', 'serif'];
  static const List<String> monoFallback = ['SF Mono', 'Roboto Mono', 'monospace'];

  TextStyle heading({double size = 28, FontWeight weight = FontWeight.w600, Color? color}) =>
      TextStyle(
        fontFamily: fontHeadings,
        fontFamilyFallback: sansFallback,
        fontSize: size,
        fontWeight: weight,
        height: 1.15,
        letterSpacing: size >= 24 ? -0.4 : -0.2,
        color: color ?? foregroundPrimary,
      );

  TextStyle body({double size = 16, FontWeight weight = FontWeight.w400, Color? color}) =>
      TextStyle(
        fontFamily: fontBody,
        fontFamilyFallback: sansFallback,
        fontSize: size,
        fontWeight: weight,
        height: 1.5,
        color: color ?? foregroundPrimary,
      );

  TextStyle caption({double size = 14, Color? color}) => TextStyle(
        fontFamily: fontCaptions,
        fontFamilyFallback: serifFallback,
        fontSize: size,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: color ?? foregroundSecondary,
      );

  TextStyle data({double size = 16, FontWeight weight = FontWeight.w500, Color? color}) =>
      TextStyle(
        fontFamily: fontData,
        fontFamilyFallback: monoFallback,
        fontSize: size,
        fontWeight: weight,
        height: 1.1,
        color: color ?? foregroundPrimary,
      );

  static StillTokens of(BuildContext context) => Theme.of(context).extension<StillTokens>()!;

  @override
  StillTokens copyWith() => this;

  @override
  StillTokens lerp(ThemeExtension<StillTokens>? other, double t) => this;
}

// ---------------------------------------------------------------------------
// Data
// ---------------------------------------------------------------------------

class Session {
  const Session({
    required this.title,
    required this.minutes,
    required this.practice,
    this.description = '',
    this.completedLabel = '',
  });

  final String title;
  final int minutes;
  final String practice;
  final String description;
  final String completedLabel;
}

const Session _todaysSession = Session(
  title: 'Letting the Day Settle',
  minutes: 18,
  practice: 'Body scan',
  description:
      'A slow scan from the crown down, with long exhales to release what the afternoon left behind. Best done seated, eyes closed.',
);

const List<Session> _quickSessions = [
  Session(title: 'Reset', minutes: 5, practice: 'Box breathing'),
  Session(title: 'Settle', minutes: 10, practice: 'Breath awareness'),
  Session(title: 'Unwind', minutes: 20, practice: 'Open awareness'),
];

const List<Session> _recentSessions = [
  Session(title: 'Morning Ground', minutes: 12, practice: 'Breath awareness', completedLabel: 'Yesterday, 7:40'),
  Session(title: 'Soft Focus', minutes: 10, practice: 'Noting', completedLabel: 'Sunday, 21:15'),
  Session(title: 'Loosening the Jaw', minutes: 8, practice: 'Body scan', completedLabel: 'Saturday, 8:05'),
  Session(title: 'Evening Tide', minutes: 20, practice: 'Open awareness', completedLabel: 'Friday, 22:30'),
];

// ---------------------------------------------------------------------------
// Screen
// ---------------------------------------------------------------------------

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tab = 0;

  static const double _tabBarHeight = 56;
  static const double _tabBarBottomInset = StillTokens.space3;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    final bottomSafe = MediaQuery.paddingOf(context).bottom;

    return Scaffold(
      backgroundColor: t.surfacePrimary,
      body: Stack(
        children: [
          // Content wrapper: one horizontal padding, gap-based vertical rhythm.
          SafeArea(
            bottom: false,
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                StillTokens.space5,
                StillTokens.space4,
                StillTokens.space5,
                _tabBarHeight + _tabBarBottomInset + bottomSafe + StillTokens.space8,
              ),
              children: const [
                _Greeting(),
                SizedBox(height: StillTokens.space6),
                _TodayHero(session: _todaysSession),
                SizedBox(height: StillTokens.space8),
                _QuickSessions(sessions: _quickSessions),
                SizedBox(height: StillTokens.space8),
                _RecentSessions(sessions: _recentSessions),
              ],
            ),
          ),
          Positioned(
            left: StillTokens.space4,
            right: StillTokens.space4,
            bottom: _tabBarBottomInset + bottomSafe,
            child: _TabBar(
              height: _tabBarHeight,
              selected: _tab,
              onSelect: (i) => setState(() => _tab = i),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Greeting — "where am I": text on the ground, no container.
// ---------------------------------------------------------------------------

class _Greeting extends StatelessWidget {
  const _Greeting();

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Good evening, Maya', style: t.heading(size: 28)),
        const SizedBox(height: StillTokens.space1),
        Text('Tuesday 16 September · 4 days in a row', style: t.caption(size: 15)),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Hero — the one inverse tile on the screen. Primary action lives here.
// ---------------------------------------------------------------------------

class _TodayHero extends StatelessWidget {
  const _TodayHero({required this.session});

  final Session session;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return Semantics(
      button: true,
      label: "Today's session: ${session.title}, ${session.minutes} minutes",
      child: Material(
        color: t.surfaceInverse,
        borderRadius: BorderRadius.circular(StillTokens.radius2xl),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(StillTokens.space5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Today's session", style: t.caption(size: 15, color: t.foregroundInverseSecondary)),
                const SizedBox(height: StillTokens.space3),
                Text(session.title, style: t.heading(size: 32, color: t.foregroundInverse)),
                const SizedBox(height: StillTokens.space3),
                Text(
                  session.description,
                  style: t.body(color: t.foregroundInverseSecondary),
                ),
                const SizedBox(height: StillTokens.space6),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${session.minutes} min', style: t.data(size: 22, color: t.foregroundInverse)),
                          const SizedBox(height: StillTokens.space1),
                          Text(session.practice, style: t.caption(color: t.foregroundInverseSecondary)),
                        ],
                      ),
                    ),
                    _BeginButton(onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BeginButton extends StatelessWidget {
  const _BeginButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    // Nested element inside the tile: pill radius + shadow.sm, per the archetype.
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(StillTokens.radiusFull),
        boxShadow: t.shadowSm,
      ),
      child: Material(
        color: t.accentTertiary,
        borderRadius: BorderRadius.circular(StillTokens.radiusFull),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(StillTokens.space4, StillTokens.space3, StillTokens.space5, StillTokens.space3),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.play_arrow_rounded, size: 22, color: t.foregroundPrimary),
                const SizedBox(width: StillTokens.space1),
                Text('Begin', style: t.body(weight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Quick sessions — a horizontal cluster of secondary tiles.
// ---------------------------------------------------------------------------

class _QuickSessions extends StatelessWidget {
  const _QuickSessions({required this.sessions});

  final List<Session> sessions;

  static const double _tileWidth = 148;
  static const double _tileHeight = 156;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionTitle(title: 'Quick sessions', trailing: 'When you only have a moment'),
        const SizedBox(height: StillTokens.space4),
        SizedBox(
          height: _tileHeight,
          // Fixed-width tiles; the third peeks past the wrapper edge to signal scroll.
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            itemCount: sessions.length,
            separatorBuilder: (_, _) => const SizedBox(width: StillTokens.space3),
            itemBuilder: (context, i) => SizedBox(
              width: _tileWidth,
              child: _QuickTile(session: sessions[i]),
            ),
          ),
        ),
        const SizedBox(height: StillTokens.space3),
        Text('Unscheduled sessions still count toward your streak.',
            style: t.caption(color: t.foregroundSecondary)),
      ],
    );
  }
}

class _QuickTile extends StatelessWidget {
  const _QuickTile({required this.session});

  final Session session;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return Semantics(
      button: true,
      label: '${session.title}, ${session.minutes} minute ${session.practice}',
      child: Material(
        color: t.surfaceSecondary,
        borderRadius: BorderRadius.circular(StillTokens.radius2xl),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(StillTokens.space4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Data figure dominates the tile (~3x its caption), label beneath.
                Text('${session.minutes}', style: t.data(size: 40, weight: FontWeight.w500)),
                Text('minutes', style: t.caption(size: 13, color: t.foregroundPrimary)),
                const Spacer(),
                Text(session.title, style: t.body(weight: FontWeight.w600)),
                Text(
                  session.practice,
                  style: t.caption(size: 13, color: t.foregroundPrimary),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Recent — a plain list on the ground. Whitespace separates rows; no dividers.
// ---------------------------------------------------------------------------

class _RecentSessions extends StatelessWidget {
  const _RecentSessions({required this.sessions});

  final List<Session> sessions;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionTitle(title: 'Recent', trailing: '${sessions.length} this week'),
        const SizedBox(height: StillTokens.space2),
        if (sessions.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: StillTokens.space6),
            child: Text(
              'Your finished sessions will gather here.',
              style: t.body(color: t.foregroundSecondary),
            ),
          )
        else
          for (final s in sessions) _RecentRow(session: s),
      ],
    );
  }
}

class _RecentRow extends StatelessWidget {
  const _RecentRow({required this.session});

  final Session session;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(StillTokens.radiusXl),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: StillTokens.space3),
        child: Row(
          children: [
            // Functional leading mark: the session's duration, set in the data face.
            Container(
              width: 52,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: t.surfaceSecondary,
                borderRadius: BorderRadius.circular(StillTokens.radiusXl),
              ),
              child: Text('${session.minutes}', style: t.data(size: 18)),
            ),
            const SizedBox(width: StillTokens.space4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(session.title, style: t.body(weight: FontWeight.w500)),
                  Text(
                    '${session.completedLabel} · ${session.practice}',
                    style: t.caption(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: StillTokens.space3),
            Icon(Icons.replay_rounded, size: 22, color: t.foregroundSecondary, semanticLabel: 'Repeat'),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, this.trailing});

  final String title;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(title, style: t.heading(size: 20)),
        if (trailing != null) ...[
          const SizedBox(width: StillTokens.space3),
          Expanded(
            child: Text(
              trailing!,
              style: t.caption(),
              textAlign: TextAlign.right,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Tab bar — floating frosted capsule inset from the edges.
// ---------------------------------------------------------------------------

class _TabBar extends StatelessWidget {
  const _TabBar({required this.height, required this.selected, required this.onSelect});

  final double height;
  final int selected;
  final ValueChanged<int> onSelect;

  static const _items = [
    (label: 'Today', icon: Icons.self_improvement_outlined, activeIcon: Icons.self_improvement),
    (label: 'Explore', icon: Icons.explore_outlined, activeIcon: Icons.explore),
    (label: 'Sleep', icon: Icons.bedtime_outlined, activeIcon: Icons.bedtime),
    (label: 'You', icon: Icons.person_outline, activeIcon: Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    final radius = BorderRadius.circular(height / 2);
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: radius, boxShadow: t.shadowMd),
      child: ClipRRect(
        borderRadius: radius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            height: height,
            padding: const EdgeInsets.all(6),
            color: t.surfacePrimary.withValues(alpha: 0.7),
            child: Row(
              children: [
                for (var i = 0; i < _items.length; i++)
                  Expanded(
                    child: _TabItem(
                      label: _items[i].label,
                      icon: i == selected ? _items[i].activeIcon : _items[i].icon,
                      active: i == selected,
                      onTap: () => onSelect(i),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({required this.label, required this.icon, required this.active, required this.onTap});

  final String label;
  final IconData icon;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = StillTokens.of(context);
    final color = active ? t.accentPrimary : t.foregroundSecondary;
    return Semantics(
      selected: active,
      button: true,
      label: label,
      child: Material(
        color: active ? t.surfaceSecondary : Colors.transparent,
        borderRadius: BorderRadius.circular(StillTokens.radiusFull),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 22, color: color),
              const SizedBox(height: StillTokens.space1),
              Text(
                label,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.fade,
                style: t.body(size: 10, weight: active ? FontWeight.w600 : FontWeight.w500, color: color)
                    .copyWith(height: 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
