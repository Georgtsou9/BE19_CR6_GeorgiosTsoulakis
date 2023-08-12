<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('datetime',null,[
                'attr' => ['class' => 'form-control mt-2'],
                'widget'=>'single_text'
                ])
            ->add('description',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('image',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('capacity',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('email',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('number',null,[
                'label' => 'Phone Number',
                'attr' => ['class' => 'form-control mt-2']])
            ->add('address',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('url',null,[
                'attr' => ['class' => 'form-control mt-2']])
            ->add('type',null,[
                'attr' => ['class' => 'form-control mt-2 mb-3']])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
