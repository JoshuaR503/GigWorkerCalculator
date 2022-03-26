import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/shared/card.dart';
import 'package:calc/styles/typography.dart';

@immutable
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: const Color(0xfff2f1f6),
        child: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
              child: FadeIn(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 24),
                    const Text('Dashboard', style: screenTitle),
                    const SizedBox(height: 24),

                    DecorativeCard(
                      actionEnabled: false,
                      action: null,
                      title: "Total expenses this week",
                      value: "\$6,300",
                    ),
                    
                    const SizedBox(height: 14),

                    _buildPortfolioSubtitle(
                      title: 'Expenses Breakdown', 
                      action: () => Navigator.pushNamed(context, '/indexes')
                    ),

                    const SizedBox(height: 14),
                    
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border.all(width: 0, color: Colors.transparent),
                        borderRadius: const BorderRadius.all(Radius.circular(4))
                      ),

                      child: Column(
                        children: [
                          
                          _buildItemCardTitle(),
                          const SizedBox(height: 8),
                          const Divider(
                            color: Color(0xffdee1f5),
                            thickness: 1.5,
                          ),
                          const SizedBox(height: 8),

                          _buildItemCard(),
                          const SizedBox(height: 18),
                          _buildItemCard(),
                          const SizedBox(height: 18),
                          _buildItemCard(),
                          const SizedBox(height: 18),
                          _buildItemCard()
                        ],
                      ),
                    )
                  ]
                )
              ),
            )
          ),
        ),
      ),
    );
  }

  Widget _buildPortfolioSubtitle({ required String  title, Function? action }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            height: 1.5,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        )),
        GestureDetector(
          child: const Text('Ver todos',
            style: TextStyle(
              fontSize: 16.0,
              height: 1.5,
              color: Color(0xffff6161),
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            
          },
        )
      ],
    );
  }

  Widget _buildItemCardTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Tuesday, 14", style: breakdownCardTitleStyle),
        Text("-\$32", style: breakdownCardTitleStyle)
      ],
    );
  }

  Widget _buildItemCard() {

    const TextStyle breakdownTitleStyle = TextStyle(
      fontSize: 16.0,
      height: 1.5,
      color: Colors.black,
    );

    final TextStyle breakdownSubitleStyle = breakdownTitleStyle.copyWith(color: Colors.black54);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      child: const FaIcon(FontAwesomeIcons.droplet, color: Color(0XFFffd7d7),),
                      decoration: const BoxDecoration(
                        color: Color(0xffff6262),
                        borderRadius: BorderRadius.all(Radius.circular(4))
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Gas Stations ", style: breakdownTitleStyle),
                        Text("Buy new clothes", style: breakdownSubitleStyle),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Row(
          children: [
             Text("-\$14", style: breakdownCardTitleStyle.copyWith(color: const Color(0XFFff7575))),
          ],
        )
      ],
    );
  }
}
