# class Sale
#     def initialize(params)
#         @params = params
#     end

#     def call
#         puts "Params in class: #{@params}"
#     end
# end

module Sale
    module FormBuilder
        class << self
            def call(params)
                subtotal = params[:subtotal]
                state_name = params[:state_name]

                tax_amount = subtotal * self.tax_rate(state_name)

                p subtotal + tax_amount
            end

            private
                def tax_rate(state)
                    if state == "CA"
                        0.064
                    else
                        0.087
                    end
                end
        end
    end
end

form_data = {
    subtotal: 5.5,
    state_name: "AZ"
}

Sale::FormBuilder.call(form_data)