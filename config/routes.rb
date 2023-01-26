Rails.application.routes.draw do
#カスタマーのログインサインアップ用のコントローラーがどこにあるかを示す
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

#アドミンのログイン用のコントローラーがどこにあるかを示す
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
end 