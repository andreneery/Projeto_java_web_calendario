<%@ page import="java.util.Calendar" %>

<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th {
  background-color: #f2f2f2;
  border: 1px solid #ddd;
  font-size: 16px;
  font-weight: bold;
  padding: 8px;
  text-align: center;
}

td {
  border: 1px solid #ddd;
  font-size: 14px;
  padding: 8px;
  text-align: center;
}

td:hover {
  background-color: #f2f2f2;
}
</style>

<%
  int ano = Integer.parseInt(request.getParameter("ano"));
  int mes = Integer.parseInt(request.getParameter("mes"));

  //Cria��o do objeto calendrario ao ano e m�s informado
  Calendar cal = Calendar.getInstance();F
  cal.set(ano, mes-1, 1);

  //pegando o numero de dias no m�s
  int numDiasMes = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

  //pegando o dia da semana do primeiro dia do mes
  int diaSemana = cal.get(Calendar.DAY_OF_WEEK);

  //criando a tabela para exibir o calend�rio
  out.println("<table>");
  out.println("<tr><th>Domingo</th><th>Segunda</th><th>Ter�a</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>S�bado</th></tr>");
  out.println("<tr>");

  //completando as c�lulas vazias no in�cio do m�s
  for (int i = 1; i < diaSemana; i++) {
    out.println("<td></td>");
  }

  //preenchendo as c�lulas com os dias do m�s
  for (int i = 1; i <= numDiasMes; i++) {
    out.println("<td>" + i + "</td>");
    if ((i + diaSemana - 1) % 7 == 0) {
      out.println("</tr><tr>");
    }
  }

  //Preenchendo as c�lulas vazias no final do m�s
  for (int i = diaSemana + numDiasMes - 1; i % 7 != 0; i++) {
    out.println("<td></td>");
  }
  out.println("</tr>");
  out.println("</table>");
%>
