function exercicio045()
	print("Digite o Tipo de carne ( F - File Duplo , A - Alcatra , P - Picanha) :")
	tipocarne = io.read()

	if tipocarne == "f" or tipocarne == "F" then
		print("Digite a Quantidade em Kg de File Duplo:")
		quantidadecarne = tonumber(io.read())
		print("A compra será feita pelo cartao Tabajara ( SIM ou NAO) :")
		tipocompra = io.read()
		if quantidadecarne <= 5 then
			valorcarne = quantidadecarne * (4.90)
		else
			valorcarne = quantidadecarne * (5.80)
		end
	elseif tipocarne == "a" or tipocarne == "A" then
		print("Digite a Quantidade em Kg de Alcatra:")
		quantidadecarne = tonumber(io.read())
		print("A compra será feita pelo cartao Tabajara ( SIM ou NAO) :")
		tipocompra = io.read()
		if quantidadecarne <= 5 then
			valorcarne = quantidadecarne * (5.90)
		else
			valorcarne = quantidadecarne * (6.80)
		end
	elseif tipocarne == "p" or tipocarne == "P" then
		print("Digite a Quantidade em Kg de Picanha:")
		quantidadecarne = tonumber(io.read())
		print("A compra será feita pelo cartao Tabajara ( SIM ou NAO) :")
		tipocompra = io.read()
		if quantidadecarne <= 5 then
			valorcarne = quantidadecarne * (6.90)
		else
			valorcarne = quantidadecarne * (7.80)
		end
	end

	if tipocompra == "SIM" then
		valordesconto = (valorcarne * 5) / 100
	else
		valordesconto = 0
	end

	print(" -- CUPOM FISCAL --")
	print(" -- Tabajara Mercado --")
	if tipocarne == "f" or tipocarne == "F" then
		print(" - Tipo de Carne comprada: File Duplo")
	elseif tipocarne == "a" or tipocarne == "a" then
		print(" - Tipo de Carne comprada: Alcatra")
	elseif tipocarne == "p" or tipocarne == "P" then
		print(" - Tipo de Carne comprada: Picanha")
	else
		print(" - Tipo de Carne Comprada: Inexistente")
		tipocarne = 0
	end
	
	if tipocarne == 0 then
		print(" -- Compra Invalida!")
	else
		print(" - Quantidade de Carne comprada: ".. quantidadecarne)
		print(" - Preço total da Compra: R$" .. valorcarne)
		if tipocompra == "SIM" then
			print(" - Tipo de pagamento: Cartão Tabajara")
		else
			print(" - Tipo de pagamento: Outro")
		end
		print(" - Valor do Desconto: R$" .. valordesconto)
		print(" - Valor total a pagar: R$" .. (valorcarne - valordesconto))
	end


end
