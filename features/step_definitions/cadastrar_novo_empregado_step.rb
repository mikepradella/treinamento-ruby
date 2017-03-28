
#You can implement step definitions for undefined steps with these snippets:

Dado(/^que esteja no site \(https:\/\/enterprise\-demo\.orangehrmlive\.com\/\)$/) do
	visit "https://enterprise-demo.orangehrmlive.com/"	
end

Quando(/^navego ate os formularios e preencho os campos obrigatorios$/) do

	fill_in('txtUsername',:with => 'admin')
	fill_in('txtPassword',:with => 'admin')	
	click_button('btnLogin')
	click_link("PIM")
	click_link('Add Employee')
	fill_in('firstName',:with => 'mike tyson')
	fill_in('middleName',:with => 'schwarzenegger')
	fill_in('lastName',:with => 'pradella')
	select('Australian Regional HQ',:from => 'location')
	click_button('btnSave')

end

Entao(/^validar cadastro realizado com sucesso$/) do
	assert_text('Personal Details')
end
