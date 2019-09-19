require_relative './config/environment'

use Rack::MethodOverride
use CourseController
use ScheduleController
run ApplicationController
