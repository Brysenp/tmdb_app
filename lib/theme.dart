import 'package:flutter/material.dart';

TextTheme textTheme(BuildContext context) => TextTheme(
  bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
  bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
  bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
  displaySmall: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w300),
  displayMedium: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w300),
  displayLarge: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w300),
  headlineSmall: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
  headlineMedium: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w800),
  headlineLarge: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w800),
  titleSmall: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
  titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
  titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
  labelSmall: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600),
  labelMedium: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
  labelLarge: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600),
);