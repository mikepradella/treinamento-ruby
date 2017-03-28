Dado(/^que esteja navegando no site \(https:\/\/enterprise\-demo\.orangehrmlive\.com\/\)$/) do
	visit "https://enterprise-demo.orangehrmlive.com/"	
end

Quando(/^navego ate lista de empregados cadastrados  e edito seu nome e sobrenome$/) do
	fill_in('txtUsername',:with => 'admin')
	fill_in('txtPassword',:with => 'admin')	
	click_button('btnLogin')
	click_link("PIM")
	click_link('menu_pim_viewEmployeeList')
	click_link('Odis')
	click_button('btnSave')
	fill_in('personal_txtEmpFirstName',:with => 'alteracao')
	fill_in('personal_txtEmpMiddleName',:with => 'feita com')
	fill_in('personal_txtEmpLastName',:with => 'sucesso')
	select('Afghan',:from => 'personal_cmbNation')
	click_button('btnSave')

end

Entao(/^validar realizado com sucesso$/) do
	assert_text('Personal Details')
end