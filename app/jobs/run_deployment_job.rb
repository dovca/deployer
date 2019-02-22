class RunDeploymentJob < ApplicationJob
  def perform(deployment)
    file = File.open('events.txt', 'a')
    file.puts(Time.now.asctime)
    file.puts(deployment[:script])
    file.puts
    file.close
  end
end
