NiceappsWeb::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  resources :disks, :users, :messages
  #match 'disks_list/:user_id' => 'disks#show_disks_by_user'
  match 'msg_disk/:user_id' => 'messages#show_messages_by_user'

 end
