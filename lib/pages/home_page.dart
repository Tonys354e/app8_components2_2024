import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      backgroundColor: const Color(0xffedf2f4),  
      body: SafeArea(  
        child: Padding(  
          padding: const EdgeInsets.all(16.0),  
          child: Column(  
            children: [  
              // Tarjeta de usuario  
              _buildUserCard(),  
              const SizedBox(height: 24.0),  
              // Resumen de transacciones  
              _buildTransactionOverview(),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  

  Widget _buildUserCard() {  
    return Container(  
      padding: const EdgeInsets.all(14.0),  
      decoration: BoxDecoration(  
        color: Colors.white,  
        borderRadius: BorderRadius.circular(16.0),  
        boxShadow: [  
          BoxShadow(  
            color: Colors.black.withOpacity(0.25),  
            offset: const Offset(0, 7),  
            blurRadius: 16.0,  
          ),  
        ],  
      ),  
      child: Column(  
        children: [  
          // Fila de Iconos  
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [  
              Icon(  
                Icons.align_horizontal_left,  
                color: const Color(0xff1b263b),  
                size: 18.0,  
              ),  
              Icon(  
                Icons.more_vert,  
                color: const Color(0xff1b263b),  
                size: 18.0,  
              ),  
            ],  
          ),  
          const SizedBox(height: 24.0),  
          // Avatar del usuario  
          CircleAvatar(  
            backgroundImage: NetworkImage(  
              "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",  
            ),  
            backgroundColor: Colors.amber,  
            radius: 48.0,  
          ),  
          const SizedBox(height: 24.0),  
          // Nombre y ocupación  
          Text(  
            "Hira Riaz",  
            style: TextStyle(  
              fontWeight: FontWeight.bold,  
              fontSize: 20.0,  
              color: const Color(0xff1b263b),  
            ),  
          ),  
          Text(  
            "UX/UI Designer",  
            style: TextStyle(  
              fontWeight: FontWeight.bold,  
              fontSize: 14.0,  
              color: Colors.black87,  
            ),  
          ),  
          const SizedBox(height: 24.0),  
          // Información financiera  
          Row(  
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [  
              _buildIncomeColumn("\$8900", "Income"),  
              _buildVerticalDivider(),  
              _buildIncomeColumn("\$5000", "Expenses"),  
              _buildVerticalDivider(),  
              _buildIncomeColumn("\$3900", "Savings"),  
            ],  
          ),  
        ],  
      ),  
    );  
  }  

  Widget _buildTransactionOverview() {  
    return Container(  
      padding: const EdgeInsets.all(16.0),  
      decoration: BoxDecoration(  
        color: Colors.white,  
        borderRadius: BorderRadius.circular(16.0),  
        boxShadow: [  
          BoxShadow(  
            color: Colors.black.withOpacity(0.25),  
            offset: const Offset(0, 7),  
            blurRadius: 16.0,  
          ),  
        ],  
      ),  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [  
          Text(  
            "Overview",  
            style: TextStyle(  
              fontWeight: FontWeight.bold,  
              fontSize: 18.0,  
              color: const Color(0xff1b263b),  
            ),  
          ),  
          const SizedBox(height: 16.0),  
          _buildTransactionItem("Sent", "Sending Payment to Claims", "\$150", Icons.arrow_upward),  
          const SizedBox(height: 16.0),  
          _buildTransactionItem("Receive", "Receiving Salary from Company", "\$250", Icons.arrow_downward),  
          const SizedBox(height: 16.0),  
          _buildTransactionItem("Loan", "Loan for the Car", "\$400", Icons.attach_money),  
        ],  
      ),  
    );  
  }  

  Widget _buildTransactionItem(String title, String subtitle, String amount, IconData icon) {  
    return Row(  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  
      children: [  
        Row(  
          children: [  
            Icon(icon, color: const Color(0xff1b263b)),  
            const SizedBox(width: 8.0),  
            Column(  
              crossAxisAlignment: CrossAxisAlignment.start,  
              children: [  
                Text(  
                  title,  
                  style: TextStyle(  
                    fontWeight: FontWeight.bold,  
                    color: const Color(0xff1b263b),  
                  ),  
                ),  
                Text(subtitle, style: TextStyle(color: Colors.black54)),  
              ],  
            ),  
          ],  
        ),  
        Text(  
          amount,  
          style: TextStyle(  
            fontWeight: FontWeight.bold,  
            color: const Color(0xff1b263b),  
          ),  
        ),  
      ],  
    );  
  }  

  Widget _buildIncomeColumn(String amount, String label) {  
    return Column(  
      children: [  
        Text(  
          amount,  
          style: TextStyle(  
            color: const Color(0xff1b263b),  
            fontSize: 16.0,  
            fontWeight: FontWeight.bold,  
          ),  
        ),  
        Text(label),  
      ],  
    );  
  }  

  Widget _buildVerticalDivider() {  
    return SizedBox(  
      height: 40,  
      width: 30,  
      child: VerticalDivider(  
        color: Colors.black.withOpacity(0.3),  
      ),  
    );  
  }  
}  