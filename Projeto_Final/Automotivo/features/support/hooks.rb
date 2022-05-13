After do |scenario|
    image_name = "Data/Reports/img/imagem-1.png"
    temp_shot = page.save_screenshot(image_name)
    file_shot = File.open(temp_shot, "rb").read
    final_shot = Base64.encode64(file_shot)
    embed(temp_shot, "image/png", "Evidência!")
end

at_exit do
ReportBuilder.configure do |config|
    config.json_path = 'Data/Reports/report.json'
    config.report_path = 'Data/Reports'
    config.report_types = [:html]
    config.report_title = 'Resultado Cenários'
    config.include_images = true
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = {browser: 'Google Chrome',
                              QA: 'Henrique Ribeiro',
                              Projeto: 'Automotivo'}
  end
  ReportBuilder.build_report
end