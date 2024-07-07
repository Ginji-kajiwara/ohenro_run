module ApplicationHelper
  def default_meta_tags
    {
      site: 'OHENRO_RUN',
      title: 'OHENRO_RUN',
      reverse: true,
      charset: 'utf-8',
      description: '「お遍路」とは、約1200年前に弘法大師（空海）が修行した四国88箇所の霊場をたどる巡礼のことです。OHENRO_RUNは日々のランニングを記録し、走った距離でお遍路を擬似体験できるサービスです。',
      keywords: 'ランニング,運動,お遍路,四国',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@',
        image: image_url('ogp.png')
      }
    }
  end
end
