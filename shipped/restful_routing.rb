                   Prefix Verb   URI Pattern                     Controller#Action
             admins_index GET    /admins/index(.:format)         admins#index
              admins_show GET    /admins/show(.:format)          admins#show
        new_admin_session GET    /admins/sign_in(.:format)       devise/sessions#new
            admin_session POST   /admins/sign_in(.:format)       devise/sessions#create
    destroy_admin_session DELETE /admins/sign_out(.:format)      devise/sessions#destroy
       new_admin_password GET    /admins/password/new(.:format)  devise/passwords#new
      edit_admin_password GET    /admins/password/edit(.:format) devise/passwords#edit
           admin_password PATCH  /admins/password(.:format)      devise/passwords#update
                          PUT    /admins/password(.:format)      devise/passwords#update
                          POST   /admins/password(.:format)      devise/passwords#create
cancel_admin_registration GET    /admins/cancel(.:format)        devise/registrations#cancel
   new_admin_registration GET    /admins/sign_up(.:format)       devise/registrations#new
  edit_admin_registration GET    /admins/edit(.:format)          devise/registrations#edit
       admin_registration PATCH  /admins(.:format)               devise/registrations#update
                          PUT    /admins(.:format)               devise/registrations#update
                          DELETE /admins(.:format)               devise/registrations#destroy
                          POST   /admins(.:format)               devise/registrations#create
          ship_jobs_index GET    /ship_jobs/index(.:format)      ship_jobs#index
         ship_jobs_create POST   /ship_jobs/create(.:format)     ship_jobs#create
        ship_jobs_destroy DELETE /ship_jobs/destroy(.:format)    ship_jobs#destroy
         new_user_session GET    /users/sign_in(.:format)        users/sessions#new
             user_session POST   /users/sign_in(.:format)        users/sessions#create
     destroy_user_session DELETE /users/sign_out(.:format)       users/sessions#destroy
        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
            user_password PATCH  /users/password(.:format)       devise/passwords#update
                          PUT    /users/password(.:format)       devise/passwords#update
                          POST   /users/password(.:format)       devise/passwords#create
 cancel_user_registration GET    /users/cancel(.:format)         users/registrations#cancel
    new_user_registration GET    /users/sign_up(.:format)        users/registrations#new
   edit_user_registration GET    /users/edit(.:format)           users/registrations#edit
        user_registration PATCH  /users(.:format)                users/registrations#update
                          PUT    /users(.:format)                users/registrations#update
                          DELETE /users(.:format)                users/registrations#destroy
                          POST   /users(.:format)                users/registrations#create
                     jobs GET    /jobs(.:format)                 jobs#index
                          POST   /jobs(.:format)                 jobs#create
                  new_job GET    /jobs/new(.:format)             jobs#new
                 edit_job GET    /jobs/:id/edit(.:format)        jobs#edit
                      job GET    /jobs/:id(.:format)             jobs#show
                          PATCH  /jobs/:id(.:format)             jobs#update
                          PUT    /jobs/:id(.:format)             jobs#update
                          DELETE /jobs/:id(.:format)             jobs#destroy
                    ships GET    /ships(.:format)                ships#index
                          POST   /ships(.:format)                ships#create
                 new_ship GET    /ships/new(.:format)            ships#new
                edit_ship GET    /ships/:id/edit(.:format)       ships#edit
                     ship GET    /ships/:id(.:format)            ships#show
                          PATCH  /ships/:id(.:format)            ships#update
                          PUT    /ships/:id(.:format)            ships#update
                          DELETE /ships/:id(.:format)            ships#destroy
              users_index GET    /users/index(.:format)          users#index
               users_show GET    /users/show(.:format)           users#show
                     root GET    /                               home#index
