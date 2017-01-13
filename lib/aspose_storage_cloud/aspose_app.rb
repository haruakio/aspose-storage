module AsposeStorageCloud
  class AsposeApp
    
    @@app_key = nil
    @app_sid = nil
    
    def AsposeApp.app_key_and_sid(app_key, app_sid)
      @@app_key = app_key
      @@app_sid = app_sid
    end
    
    def AsposeApp.app_key
      @@app_key
    end

    def AsposeApp.app_sid
      @@app_sid
    end
  end
end