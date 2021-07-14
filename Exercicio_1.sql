/* Criar uma instrução para retornar a média de idade, numero de filhos e grau de instrução dos
funcionários cujo o salário hora esteja acima da média

Retornar somente os dados dos funcionarios que moram na capital e sejam casados */


select round(avg(idade),1), numero_filhos, grau_instrucao, count(*) from cap16."TB_FUNC"
where salario_hora > (select avg(salario_hora) from cap16."TB_FUNC") /*Usar sub-query*/
and reg_procedencia = 'capital'
and estado_civil = 'casado'

group by numero_filhos, grau_instrucao
