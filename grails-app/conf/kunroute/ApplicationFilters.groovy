package kunroute

class ApplicationFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {

            }
            after = { Map model ->
                if(model != null){
                    model.put('applicationTitle', 'Kun Route')
                }
            }
            afterView = { Exception e ->

            }
        }
    }
}
