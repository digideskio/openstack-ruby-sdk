class OpenStackRubySDK::Ceilometer
  include Peace::Service
  has_resource :resource
  has_resource :meter
  has_resource :sample
  has_resource :capability
  has_resource :event_type
  has_resource :event
end
