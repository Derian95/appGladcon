

import 'package:flutter/material.dart';
import 'card.dart';


//Listado de opciones del menu principal

List<CardMenuOption> cardData = [
  const CardMenuOption(
    title: 'Asistencia',
    description: 'Soy una descripcion',
    img: 'assets/narrruto.jpg',
    icon: Icons.assignment_turned_in_outlined,
    route: '/assistance',
  ),
  const CardMenuOption(
      title: 'Asistencia Manual',
      description: 'Soy una descripcion',
      img: 'assets/narrruto.jpg',
      icon: Icons.assignment_late_outlined,
      route: '/manualAssistance'),
  const CardMenuOption(
      title: 'Visita',
      description: 'Soy una descripcion',
      img: 'assets/narrruto.jpg',
      icon: Icons.volunteer_activism_outlined,
      route: '/visit'),
  const CardMenuOption(
      title: 'Alertas',
      description: 'Soy una descripcion',
      img: 'assets/narrruto.jpg',
      icon: Icons.crisis_alert_outlined,
      route: '/alert'),
  const CardMenuOption(
      title: 'Control de Acceso',
      description: 'Soy una descripcion',
      img: 'assets/narrruto.jpg',
      icon: Icons.lan_outlined,
      route: '/control'),
  const CardMenuOption(
      title: 'Empadronamiento',
      description: 'Soy una descripcion',
      img: 'assets/narrruto.jpg',
      icon: Icons.person_2_outlined,
      route: '/census'),
  const CardMenuOption(
      title: 'Salud',
      description: 'Soy una descripcion',
      img: 'assets/narrruto.jpg',
      icon: Icons.colorize_outlined,
      route: '/health'),
];
