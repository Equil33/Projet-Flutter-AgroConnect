import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Statistique extends StatelessWidget {
  const Statistique({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Carte avec le titre et le graphique
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Analyses & Statistiques',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Le Camembert (Pie Chart)
                  SizedBox(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 2, // Espace entre les sections
                        centerSpaceRadius: 50, // Espace vide au centre (Donut)
                        sections: [
                          PieChartSectionData(
                            color: Colors.blue,
                            value: 40,
                            title: '',
                            radius: 60,
                          ),
                          PieChartSectionData(
                            color: Colors.orange,
                            value: 30,
                            title: '',
                            radius: 60,
                          ),
                          PieChartSectionData(
                            color: Colors.purpleAccent,
                            value: 30,
                            title: '',
                            radius: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Légende
                  _buildLegendItem(color: Colors.purpleAccent, text: 'Rendement annuel', percent: '00%'),
                  const SizedBox(height: 10),
                  _buildLegendItem(color: Colors.blue, text: 'Santé moyenne des cultures', percent: '00%'),
                  const SizedBox(height: 10),
                  _buildLegendItem(color: Colors.orange, text: 'Humidité du sol (moyenne)', percent: '00%'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget utilitaire pour créer une ligne de légende
  Widget _buildLegendItem({required Color color, required String text, required String percent}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Text(
          percent,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
