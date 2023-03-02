# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'
use_frameworks!

install! 'cocoapods',
:disable_input_output_paths => true,
:generate_multiple_pod_projects => true,
:incremental_installation => true,
:warn_for_unused_master_specs_repo => false

def third_party_pods
    pod 'RxCocoa', '~> 6.5.0', :inhibit_warnings => true
    pod 'RxSwift', '~> 6.5.0', :inhibit_warnings => true
    pod 'lottie-ios', '~> 2.5.0', :inhibit_warnings => true
    pod 'JWTDecode','2.6.3'
    # Pods for TodoListApp
  pod 'Alamofire'
  pod 'Swinject'
end

def testing_pods
    pod 'OCMock', '3.4.1', :inhibit_warnings => true
    pod 'RxTest', '~> 6.5.0', :inhibit_warnings => true
    pod 'RxBlocking', '~> 6.5.0', :inhibit_warnings => true
    pod 'Cuckoo', '~> 1.7.0', :inhibit_warnings => true
end

target 'TodoListApp' do
  third_party_pods
  target 'TodoListAppTests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end
  

  target 'TodoListAppUITests' do
    # Pods for testing
  end

end
