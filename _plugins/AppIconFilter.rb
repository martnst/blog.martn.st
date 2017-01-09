# HOW TO GET MORE ICONS: 
#
# Variant A - retrieve from installed app
# 0. cd …/blog/assets/img/app_icons
# 1. `ll /Applications/<AppName>.app/Contents/Resources/*.icns`
# 2. `cp /Applications/<AppName>.app/Contents/Resources/<IconName>.icns AppName.incs`
# 3. `iconutil --convert iconset <AppName>.icns`
# 4. git commit <AppName>.iconset
#
# Variant B - arbitrary png file
# - place png in …/blog/assets/img/app_icons 
# - appname in lower case appended by _icon
# - e.g. dock_icon.png

module Jekyll
  module AppIconFilter
    def add_app_icon(appname)
      icon_style = "height: 2rem; margin: 0; margin-bottom: -0.4rem;"
      icon_file = check_file "/assets/img/app_icons/#{appname}.iconset/icon_32x32@2x.png"
      icon_file ||= check_file "/assets/img/app_icons/#{appname}.iconset/icon_512x512.png"
      icon_file ||= check_file "/assets/img/app_icons/#{appname.gsub(' ', '_').downcase}_icon.png"
      icon_app_name = icon_file ? appname : 'Terminal'
      icon_file ||= "/assets/img/app_icons/Terminal.iconset/icon_32x32@2x.png"
      icon_alt = "#{icon_app_name} Icon"
      "<img src=\"#{icon_file}\" alt=\"#{icon_alt}\" style=\"#{icon_style}\"> #{appname}"
    end

    def check_file filepath      
      File.file?("#{@context.registers[:site].config["source"]}#{filepath}") ? filepath : nil
    end
  end
end

Liquid::Template.register_filter(Jekyll::AppIconFilter)