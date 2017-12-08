                                                                              
@cadastro
Dado("que euc esteja no site ORANGEHRM") do                                   
  visit'http://opensource.demo.orangehrmlive.com/'
end                                                                           
                                                                              
Quando("criar o login com um usuário e senha") do                             
  fill_in('txtUsername',:with => 'admin')
  fill_in('txtPassword',:with => 'admin')
  find(:xpath, '//*[@id="btnLogin"]').click
end                                                                           
                                                                              
Então("vou cadastrar um novo empregado") do                                   
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  find(:xpath, '//*[@id="menu_pim_addEmployee"]').click
  fill_in('firstName',:with => 'Natália')
  fill_in('middleName',:with => 'Carvalho')
  fill_in('lastName',:with => 'Ribeiro')
  fill_in('employeeId',:with => '2093')
  attach_file('photofile', File.absolute_path('C:\Users\Inmetrics.LP1439\Downloads'))
end                                                                           
    
         
