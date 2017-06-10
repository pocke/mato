# frozen_string_literal: true

require_relative '../test_helper'

class CheckboxTest < FilterTest

  def subject
    Mato::HtmlFilters::Checkbox.new
  end

  def test_simle
    input = <<~'MARKDOWN'
      * [ ] foo
      * [x] bar
      * baz
      *
    MARKDOWN

    output = <<~'HTML'
      <ul>
      <li class="task-list-item">
      <input type="checkbox" class="task-list-item-checkbox" disabled>foo</li>
      <li class="task-list-item">
      <input type="checkbox" class="task-list-item-checkbox" disabled checked>bar</li>
      <li>baz</li>
      <li>
      </ul>
    HTML

    assert_html_eq(mato.process(input).render_html, output)
  end
end