import 'package:flutter/material.dart';

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заказ оплачен'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('image'),
            Image.asset('assets/images/party_popper.png'),
            const Text('Ваш заказ принят в работу'),
            const SizedBox(height: 20),
            const Text(
                'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.')
          ],
        ),
      ),
    );
  }
}
