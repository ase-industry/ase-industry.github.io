<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230530115233 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE comment ADD pc_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE comment ADD CONSTRAINT FK_9474526C8F63531D FOREIGN KEY (pc_id) REFERENCES pc (id)');
        $this->addSql('CREATE INDEX IDX_9474526C8F63531D ON comment (pc_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE comment DROP FOREIGN KEY FK_9474526C8F63531D');
        $this->addSql('DROP INDEX IDX_9474526C8F63531D ON comment');
        $this->addSql('ALTER TABLE comment DROP pc_id');
        $this->addSql('DROP INDEX UNIQ_BA5D5BEB989D9B62 ON pc');
    }
}
