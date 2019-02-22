class WebhookController < ApplicationController
	skip_before_action :verify_authenticity_token

	def handle
		case request.headers['X-GitHub-Event']
			when 'push'
				process_push_event(params)
		end
	end

	private
		def process_push_event params
			repo_name = params[:repository][:full_name]
			ref_name = params[:ref]

			repository = Repository.find_by name: repo_name
			return false if repository.nil?

			deployment = repository.deployments.find_by branch: ref_name
			return false if deployment.nil?

			file = File.open('events.txt', 'a')
			file.write('pushed to ' + repo_name + ' ' + ref_name)
			file.write('should execute ' + deployment.script)
			file.close

			return true
		end
end
