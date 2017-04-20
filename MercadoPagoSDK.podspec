Pod::Spec.new do |s|
  s.name             = "MercadoPagoSDK"
  s.version          = "3.0.0-BETA-18"
  s.summary          = "MercadoPagoSDK"
  s.homepage         = "https://www.mercadopago.com"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Matias Gualino" => "matias.gualino@mercadolibre.com" }
  s.source           = { :git => "https://github.com/mercadopago/px-ios.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.resources = ['MercadoPagoSDK/MercadoPagoSDK/*.xcassets','MercadoPagoSDK/*.xcassets', 'MercadoPagoSDK/MercadoPagoSDK/*.ttf']
  s.source_files = ['MercadoPagoSDK/MercadoPagoSDK/*' , 'MercadoPagoSDK/MercadoPagoSDK/Tracker/*']

  #s.dependency 'MercadoPagoTracker'

  s.subspec 'Localization' do |t|
    %w|pt es es-MX es-CO|.map {|localename|
      t.subspec localename do |u|
        u.ios.resources = "MercadoPagoSDK/MercadoPagoSDK/#{localename}.lproj"
        u.ios.preserve_paths = "MercadoPagoSDK/MercadoPagoSDK/#{localename}.lproj"
     end
    }
  end

s.pod_target_xcconfig = {
  'SWIFT_VERSION' => '3.0.1'
}

end
