World(Helper)



After '@clicar' do
  app_pages.app
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')
    scenario_name = scenario.name.delete(',', '')
    scenario_name = scenario.name.delete('(', '')
    scenario_name = scenario.name.delete(')', '')
    scenario_name = scenario.name.delete('#', '')


    if scenario.failed?
      take_screenshots(scenario_name.downcase!, 'failed')
    else
      take_screenshots(scenario_name.downcase!, 'passed')
    end
  end
