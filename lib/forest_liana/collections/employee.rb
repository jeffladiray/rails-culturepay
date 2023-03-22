class Forest::Employee
  include ForestLiana::Collection

  collection :Employee

  action "update user",
     type: 'single',
     fields: [{
          field: 'Gender',
          type: 'String',
          is_required: false
        },{
         field: 'Prénom',
         type: 'String',
         is_required: false
        }, {
          field: 'Nom',
          type: 'String',
          is_required: false
        }, {
          field: 'Téléphone',
          type: 'String',
          is_required: false
        }, {
          field: 'Email',
          type: 'String',
          is_required: false
        }
    ],
     hooks: {
       load: lambda do |context|
         gender = context[:fields].find { |field| field[:field] == 'Gender' }
         first_name = context[:fields].find { |field| field[:field] == 'Prénom' }
         last_name = context[:fields].find { |field| field[:field] == 'Nom' }
         phone_number = context[:fields].find { |field| field[:field] == 'Téléphone' }
         email = context[:fields].find { |field| field[:field] == 'Email' }

         id = context[:params][:data][:attributes][:ids][0]
         employee = Employee.find(id)

         gender[:value] = employee.gender
         first_name[:value] = employee.first_name
         last_name[:value] = employee.last_name
         phone_number[:value] = employee.phone_number
         email[:value] = employee.email

         context[:fields]
       end
     }
end
