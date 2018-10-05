require 'spec_helper'

module Structural
  module Model
    describe Field do
      subject { described_class.new(model, name, options) }

      let(:model) { 'model' }
      let(:name) { 'name' }
      let(:options) { {} }

      describe '#ivar_name' do
        context 'when the name doesnt contain question mark' do
          let(:ivar_name) { "@#{name}" }

          it 'returns name as an instance name' do
            expect(subject.ivar_name).to eq(ivar_name)
          end
        end
      end

      describe '#ivar_name' do
        context 'when the name contains question mark' do
          let(:name) { 'name?' }
          let(:ivar_name) { '@name_question_mark' }

          it 'returns name as an instance name' do
            expect(subject.ivar_name).to eq(ivar_name)
          end
        end
      end
    end
  end
end
